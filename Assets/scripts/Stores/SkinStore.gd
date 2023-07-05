extends Node


func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false
