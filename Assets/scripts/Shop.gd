extends Control

@onready var player_data = SaveGame.game_data
@onready var cost_data = SaveGame.cost_dict

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/Main.tscn")

func _process(delta):
	cost_label()
	$MoneyBox/RichTextLabel.text = "$%s" % player_data.o2
	
func store(value)-> void:
	if(value == 1 && player_data.o2 >= cost_data.cost["0"]):
		player_data.multiplier += 1
		player_data.o2 -= cost_data.cost["0"]
		cost_data.cost["0"] += cost_data.cost["0"] * 1/20
		
	if(value == 2 && player_data.o2 >= cost_data.cost["1"]):
		player_data.multiplier += 5
		player_data.o2 -= cost_data.cost["1"]
		cost_data.cost["1"] += cost_data.cost["1"] * 1/20
		
	if(value == 3 && player_data.o2 >= cost_data.cost["2"]):
		player_data.multiplier += 20
		player_data.o2 -= player_data.cost["2"]
		cost_data.cost["2"] += cost_data.cost["2"] * 1/20
		
	if(value == 4 && player_data.o2 >= cost_data.max_value/2):
		player_data.multiplier += player_data.o2 * 2
		player_data.o2 -= player_data.max_value/2
		cost_data.cost["3"] += player_data.max_value * 2
		

func cost_label():
	$ScrollContainer/VBoxContainer/Item1/Cost.text = "$%s" % cost_data.cost["0"]
	$ScrollContainer/VBoxContainer/Item2/Cost.text = "$%s" % cost_data.cost["1"]
	$ScrollContainer/VBoxContainer/Item3/Cost.text = "$%s" % cost_data.cost["2"]
	$ScrollContainer/VBoxContainer/Item3/Cost.text = "$%s" % cost_data.cost["3"]
	
func _on_texture_button_pressed():
	store(1)

func _on_texture_button_2_pressed():
	store(2)

func _on_texture_button_3_pressed():
	store(3)

func _on_texture_button_4_pressed():
	store(4)
