extends Node2D

func _ready():
	$somdeteste.play()

func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://Assets/scenes/menu.tscn")


func _on_save_pressed():
	SaveGame.save_data()
