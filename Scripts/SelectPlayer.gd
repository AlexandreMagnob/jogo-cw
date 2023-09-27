extends Control

var BikerPlayer = "res://Cenas/Jogador/BikerPlayer.tscn"
var CyborgPlayer = "res://Cenas/Jogador/CyborgPlayer.tscn"
var PunkPlayer = "res://Cenas/Jogador/PunkPlayer.tscn"



func _ready():
	pass # Replace with function body.

func goToScene():
	get_tree().change_scene("res://Cenas/Jogo.tscn")

func _on_BikerButton_pressed():
	Global.playerDir = BikerPlayer
	goToScene()
	print("biker")

func _on_CyborgButton_pressed():
	Global.playerDir = CyborgPlayer
	goToScene()
	print("Cyborg")

func _on_PunkButton_pressed():
	Global.playerDir = PunkPlayer
	goToScene()
	print("Punk")
