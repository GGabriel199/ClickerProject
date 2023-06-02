extends Node2D

var points = 0
var max_points = 999999999

func _ready():
	$CanvasLayer/Clicks/Score.text = str(points)
	$somdeteste.play()

func _process(delta):
	_max_value()

func _on_texture_button_pressed():
	points += 1
	$CanvasLayer/Clicks/Score.text = str(points)


func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://Assets/scenes/menu.tscn")
	
func _max_value()-> void:
	if(points >= max_points):
		points = max_points - 1
		get_node("CanvasLayer/Bottle").queue_free()
