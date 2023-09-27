extends "ScrollMovement.gd"


func _physics_process(delta):
	move()


func _on_EffectDamage_body_entered(body):
	if body.name == "BikerPlayer":
		Signals.emit_signal("killplayer")
		queue_free()
	elif body.name == "PunkPlayer":
		Signals.emit_signal("killplayer")
		queue_free()
	elif body.name == "CyborgPlayer":
		Signals.emit_signal("killplayer")
		queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
	
	
