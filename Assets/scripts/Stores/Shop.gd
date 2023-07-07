extends Control

var player_data = SaveGame

func _ready():
	$ClickSound.play()
	
func _process(delta):
	cost_label()
	$MoneyBox/RichTextLabel.text = "$%s" % player_data.o2

func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false

func store(value)-> void:
	if(value == 1 && player_data.o2 >= player_data.cost_soda):
		player_data.multiplier += 1
		player_data.o2 -= player_data.cost_soda
		player_data.cost_soda += player_data.cost_soda * 1/20
		
	if(value == 2 && player_data.o2 >= player_data.cost_wine):
		player_data.multiplier += 5
		player_data.o2 -= player_data.cost_wine
		player_data.cost_wine += player_data.cost_wine * 1/20
		
	if(value == 3 && player_data.o2 >= player_data.chopp):
		player_data.multiplier += 20
		player_data.o2 -= player_data.chopp
		player_data.chopp += player_data.chopp * 1/20
		
	if(value == 4 && player_data.o2 >= player_data.cost_multiplier):
		player_data.cost_multiplier += player_data.o2 * 2
		player_data.o2 -= player_data.cost_multiplier
		player_data.cost_multiplier += player_data.cost_multiplier * 1/5
		
	player_data.save_json()

func cost_label():
	$ScrollContainer/VBoxContainer/Item1/Cost.text = "$%s" % str(player_data.cost_soda)
	$ScrollContainer/VBoxContainer/Item2/Cost.text = "$%s" % str(player_data.cost_wine)
	$ScrollContainer/VBoxContainer/Item3/Cost.text = "$%s" % str(player_data.cost_chopp)
	$ScrollContainer/VBoxContainer/Item4/Cost.text = "$%s" % str(player_data.cost_multiplier)
	
func _on_texture_button_pressed():
	store(1)

func _on_texture_button_2_pressed():
	store(2)

func _on_texture_button_3_pressed():
	store(3)

func _on_texture_button_4_pressed():
	store(4)
