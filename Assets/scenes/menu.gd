extends Node2D

var clicks: int
var cost: int
var gain_clicks: float

func _ready():
	clicks += gain_clicks
	
func _on_quit_pressed():
	get_tree().quit()


func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Assets/scenes/Principal.tscn")


func _on_item_1_pressed():
	cost = 10
	if(clicks >= cost):
		clicks -= cost
		clicks +=1
		gain_clicks += 0.2


func _on_item_2_pressed():
	cost = 100
	if(clicks >= cost):
		clicks -= cost
		clicks +=5


func _on_item_3_pressed():
	cost = 500
	if(clicks >= cost):
		clicks -= cost
		gain_clicks += 3.0
