extends Control

var player_data = SaveGame.cost
var score = SaveGame

func _ready():
	$ClickSound.play()
	
func _process(delta):
	cost_label()
	$MoneyBox/RichTextLabel.text = "$%s" % score.o2

func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false

func store(value)-> void:
	if(value == 1 && score.o2 >= player_data["Soda"]):
		score.multiplier += 1
		score.o2 -= player_data["Soda"]
		player_data["Soda"] += player_data["Soda"] * 1/20
		
	if(value == 2 && score.o2 >= player_data["Wine"]):
		score.multiplier += 5
		score.o2 -= player_data["Wine"]
		player_data["Wine"] += player_data["Wine"] * 1/20
		
	if(value == 3 && score.o2 >= player_data["Chopp"]):
		score.multiplier += 20
		score.o2 -= player_data["Chopp"]
		player_data["Chopp"] += player_data["Chopp"] * 1/20
		
	if(value == 4 && player_data.o2 >= player_data["Multiplier"]):
		player_data.multiplier += score.o2 * 2
		player_data.o2 -= player_data["Multiplier"]
		player_data["Multiplier"] += player_data["Multiplier"] * 1/5
		
	score.save_json()

func cost_label():
	$ScrollContainer/VBoxContainer/Item1/Cost.text = "$%s" % str(player_data.Soda)
	$ScrollContainer/VBoxContainer/Item2/Cost.text = "$%s" % str(player_data.Wine)
	$ScrollContainer/VBoxContainer/Item3/Cost.text = "$%s" % str(player_data.Chopp)
	$ScrollContainer/VBoxContainer/Item4/Cost.text = "$%s" % str(player_data.Multiplier)
	
func _on_texture_button_pressed():
	store(1)

func _on_texture_button_2_pressed():
	store(2)

func _on_texture_button_3_pressed():
	store(3)

func _on_texture_button_4_pressed():
	store(4)
