extends Node

var playerDir
var player = Node2D

export var scroll_speed = 5.3

func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
