extends KinematicBody2D

export var scroll_speed = 30.0
var velocity = Vector2.ZERO

export var jump_velocity = 600.0
export var gravity_scale = 33.0

var score = 0 

enum{
	JUMP,
	RUN,
	IDLE
}

var state = RUN

onready var animation = $AnimatedSprite

func _ready():
	Signals.connect("rewardplayer",self,"rewardplayer")
	Signals.connect("killplayer",self,"killplayer")
	

func _physics_process(delta):
	match state:
		RUN:
			animation.play("Run")
		JUMP:
			velocity = Vector2.ZERO
			velocity.y -= jump_velocity
			animation.play("Jump")
			state = IDLE
		IDLE:
			pass
		
	
	
	velocity.y += gravity_scale
	move_and_collide(velocity*delta)
	
	
	
func _input(event):
	if state == RUN:
		if event.is_action_pressed("jump"):
			state = JUMP

func _on_Area2D_body_entered(body):
	if body is  StaticBody2D:
		state = RUN
		


func _on_Area2D_body_exited(body):
	if body is  StaticBody2D:
		state = JUMP
		


func _on_Timer_timeout():
	state = getrandomstate([JUMP,IDLE,RUN])
	
func getrandomstate(statelist):
	randomize()
	statelist.shuffle()
	return statelist.front()
	
	
func rewardplayer(scoretoadd):
	score+=scoretoadd
	Signals.emit_signal("updatescore",score)
	if score == 0:
		Global.scroll_speed = 5.3
	elif score == 10:
		Global.scroll_speed = 8.0
	elif score == 15:
		Global.scroll_speed = 9.0
	elif score ==25:
		Global.scroll_speed = 10.0
	elif score ==30:
		Global.scroll_speed = 11.0
	elif score ==40:
		Global.scroll_speed = 12.0
	elif score ==45:
		Global.scroll_speed = 13.0
	elif score ==50:
		Global.scroll_speed = 14.0
	elif score ==55:
		Global.scroll_speed = 15.0
	elif score ==60:
		Global.scroll_speed = 15.5
	elif score ==65:
		Global.scroll_speed = 16.0
	elif score ==70:
		Global.scroll_speed = 16.5
	elif score ==75:
		Global.scroll_speed = 17.0
	elif score ==100:
		Global.scroll_speed = 17.5

		
func killplayer():
	queue_free()
	print("You die")
	

func _on_ExitButton_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")


func _on_ExitButton2_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")
