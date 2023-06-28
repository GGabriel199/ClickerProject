extends CanvasLayer


func _on_TextureButton_pressed():
	$Control.show()
	$Control2.hide()

func _on_texture_button_2_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/configurations.tscn")

func _on_skinbutton_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/skin_store.tscn")

func _on_backgrdbutton_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/back_ground_store.tscn")

func _on_hiring_btn_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/hiring.tscn")
