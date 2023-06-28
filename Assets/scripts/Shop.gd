extends Control

@onready var player_data = SaveGame.game_data
@onready var cost_data = SaveGame.cost_dict

func _ready():
	$ClickSound.play()
	$".".hide()
	
func _process(delta):
	cost_label()
	$MoneyBox/RichTextLabel.text = "$%s" % player_data.o2
	
func _on_back_pressed():
	get_tree().change_scene_to_file("res://Assets/Scenes/Main.tscn")


func store(value)-> void:
	if(value == 1 && player_data.o2 >= cost_data.cost["Soda"]):
		player_data.multiplier += 1
		player_data.o2 -= cost_data.cost["Soda"]
		cost_data.cost["Soda"] += cost_data.cost["Soda"] * 1/20
		
	if(value == 2 && player_data.o2 >= cost_data.cost["Wine"]):
		player_data.multiplier += 5
		player_data.o2 -= cost_data.cost["Wine"]
		cost_data.cost["Wine"] += cost_data.cost["Wine"] * 1/20
		
	if(value == 3 && player_data.o2 >= cost_data.cost["Chopp"]):
		player_data.multiplier += 20
		player_data.o2 -= player_data.cost["Chopp"]
		cost_data.cost["Chopp"] += cost_data.cost["Chopp"] * 1/20
		
	if(value == 4 && player_data.o2 >= cost_data.cost["Multiplier"]):
		player_data.multiplier += player_data.o2 * 2
		player_data.o2 -= cost_data.cost["Multiplier"]
		cost_data.cost["Multiplier"] += cost_data.cost["Multiplier"] * 1/5
		

func cost_label():
	$ScrollContainer/VBoxContainer/Item1/Cost.text = "$%s" % cost_data.cost["Soda"]
	$ScrollContainer/VBoxContainer/Item2/Cost.text = "$%s" % cost_data.cost["Wine"]
	$ScrollContainer/VBoxContainer/Item3/Cost.text = "$%s" % cost_data.cost["Chopp"]
	$ScrollContainer/VBoxContainer/Item3/Cost.text = "$%s" % cost_data.cost["Multiplier"]
	
func _on_texture_button_pressed():
	store(1)

func _on_texture_button_2_pressed():
	store(2)

func _on_texture_button_3_pressed():
	store(3)

func _on_texture_button_4_pressed():
	store(4)
