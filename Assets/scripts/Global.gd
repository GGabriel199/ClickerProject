extends Node

var playerDir
var player: Node2D


func skin_changer(positionX, positionY : float):
	var playerDir = player.instantiate()
	playerDir.set_position(Vector2(positionX, positionY))
	add_child(playerDir)


