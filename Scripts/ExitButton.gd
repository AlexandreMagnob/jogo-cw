extends TouchScreenButton


func _ready():
	Signals.connect("killplayer",self,"gameover")

func gameover():
	self.show()





func _on_ExitButton_pressed():
	get_tree().change_scene("res://Cenas/Menu.tscn")
