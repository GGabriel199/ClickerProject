extends Node2D

var points = 0

func _ready():
	$CanvasLayer/Clicks/Score.text = str(points)



func _on_texture_button_pressed():
	points += 1
	$CanvasLayer/Clicks/Score.text = str(points)
