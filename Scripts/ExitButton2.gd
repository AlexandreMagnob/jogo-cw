extends Button


func _ready():
	Signals.connect("killplayer",self,"gameover")


func gameover():
	self.show()
	
	
	



func _on_ExitButton2_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")
