extends Node

var texture1 = load("res://Assets/Objects/PlayerSkins/Bottle-Sheet-export.png")
var texture2 = load("res://Assets/Objects/PlayerSkins/Juice-Sheet.png")
var texture3 = load("res://Assets/Objects/PlayerSkins/Coffee-Sheet.png")
var texture4 = load("res://Assets/Objects/PlayerSkins/soda-Sheet-export.png")
var texture5 = load("res://Assets/Objects/PlayerSkins/WeirdBottle-Sheet-export.png")
var texture6 = load("res://Assets/Objects/PlayerSkins/Christmas bottle.png")

func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false

func _on_texture_button_1_pressed():
	pass

func _on_texture_button_2_pressed():
	pass

func _on_texture_button_3_pressed():
	pass

func _on_texture_button_4_pressed():
	pass

func _on_texture_button_5_pressed():
	pass

func _on_texture_button_6_pressed():
	pass
