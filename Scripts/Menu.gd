extends Node2D


func _ready():
	pass 




func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/SelectPlayer.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Cenas/SelectPlayer.tscn")


func _on_InfoButton_pressed():
	get_tree().change_scene("res://Cenas/tutorial.tscn")


func _on_InfoButton2_pressed():
	get_tree().change_scene("res://Cenas/tutorial.tscn")


func _on_PlayerButton_pressed():
	get_tree().change_scene("res://Cenas/SelectPlayer.tscn")


func _on_PlayerButton2_pressed():
	get_tree().change_scene("res://Cenas/SelectPlayer.tscn")
