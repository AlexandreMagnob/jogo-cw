extends "ScrollMovement.gd"


func _physics_process(delta):
	move()


func _on_Pickup_body_entered(body):
	if body.name == "BikerPlayer":
		Signals.emit_signal("rewardplayer",1)
		queue_free()
	elif body.name == "PunkPlayer":
		Signals.emit_signal("rewardplayer",1)
		queue_free()
	elif body.name == "CyborgPlayer":
		Signals.emit_signal("rewardplayer",1)
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

