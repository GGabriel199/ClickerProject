extends Node

func _on_texture_button_pressed():
	DirAccess.remove_absolute("user://save_file.save")
	print("Data erased")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/Main.tscn")
