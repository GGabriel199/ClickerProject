extends Node

var texture1 = "res://Assets/Player/WaterBottle.tscn"
var texture2 = "res://Assets/Player/juice_jar.tscn"
var texture3 = "res://Assets/Player/Thermic.tscn"
var texture4
var texture5
var texture6

func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false

func _on_texture_button_1_pressed():
	Global.playerDir = texture1

func _on_texture_button_2_pressed():
	Global.playerDir = texture2

func _on_texture_button_3_pressed():
	Global.playerDir = texture3

func _on_texture_button_4_pressed():
	Global.playerDir = texture4

func _on_texture_button_5_pressed():
	Global.playerDir = texture5

func _on_texture_button_6_pressed():
	Global.playerDir = texture6
