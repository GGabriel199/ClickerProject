extends CanvasLayer
	
func _on_texture_button_2_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/configurations.tscn")

func _on_skinbutton_pressed():
	$SkinStore.show()
	$GameInterface.hide()
	get_tree().paused = true

func _on_backgrdbutton_pressed():
	$BackGroundStore.show()
	$GameInterface.hide()
	get_tree().paused = true

func _on_hiring_btn_pressed():
	$Hiring.show()
	$GameInterface.hide()
	get_tree().paused = true

func _on_configbutton_pressed():
	$Configurations.show()
	$GameInterface.hide()
	get_tree().paused = true

func _on_shopbutton_pressed():
	$Control3.show()
	$GameInterface.hide()
	get_tree().paused = true
