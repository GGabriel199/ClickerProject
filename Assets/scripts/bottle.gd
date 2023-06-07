extends Node2D

var player = Player.new()

func _ready():
	$somdeteste.play()
	player.background = "res://Assets/scenes/Principal.tscn"

func _on_menu_button_pressed():
	get_tree().change_scene_to_file("res://Assets/scenes/menu.tscn")
