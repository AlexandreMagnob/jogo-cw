extends Control

func _ready():
	Signals.connect("killplayer",self,"gameover")

func _on_Button_pressed():
	get_tree().reload_current_scene()


func _on_Button2_pressed():
	get_tree().reload_current_scene()
	
func gameover():
	self.show()
