extends VisibilityNotifier2D

onready var pai = get_parent()


func _on_Otimizador_screen_entered():
	pai.visible = true
	print("entrou " + str(pai))

func _on_Otimizador_screen_exited():
	pai.visible = false
	print("saiu " + str(pai))

