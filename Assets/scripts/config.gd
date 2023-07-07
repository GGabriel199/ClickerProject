extends Node

func _on_texture_button_pressed():
	DirAccess.remove_absolute("user://save.json")
	print("Data erased")

func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false


func _on_quit_pressed():
	get_tree().quit()
	
