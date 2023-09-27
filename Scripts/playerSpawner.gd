extends Node2D

onready var playerPosition = $Position2D
var player_princ: Node2D = null

func _ready():
	player_princ = load(Global.playerDir).instance()
	player_princ.global_position = playerPosition.global_position
	add_child(player_princ)


