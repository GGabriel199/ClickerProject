extends Node

const SAVE_PATH = "user://save_file.save"
var player_node = NodePath()
var half_value
var game_data = {
	"o2" : 0,
	"max_value" : 1000000,
	"level" : 1,
	"multiplier" : 1
}
var cost_dict = {cost = {
	"0": 50, "1": 150, "2": 1200, "3": half_value
}}

func _ready():
	load_game()
	half_value = game_data.max_value/2
	
func save_game():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var player = get_node(player_node)
	var save_dict = {
		player = {
			"o2" : game_data.o2,
			"max_value" : game_data.max_value,
			"level" : game_data.level,
			"multiplier" : game_data.multiplier,
			"cost" : cost_dict.cost
		}
	}
	return save_dict
	file.store_string("%s" % save_dict.player)
	file.store_line(JSON.new().stringify(save_dict))
	get_node("../LoadJSON").disable = false
	file.close()
	
func load_game():
	if FileAccess.file_exists(SAVE_PATH):
		var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
		game_data.o2 = file.get_as_text(true).to_int()
		game_data.multiplier = file.get_as_text(true).to_int()
		game_data.level = file.get_as_text(true).to_int()
		game_data.max_value = file.get_as_text(true).to_int()
		var test_json_conv = JSON.new()
		var save_dict = test_json_conv.get_data()
		var player = get_node(player_node)
		print("Game loaded")
		file.close()
	elif not FileAccess.file_exists(SAVE_PATH):
		return

func level_limits()-> void:
	if(game_data.o2 <= 0):
		game_data.o2 = 0
		
	if(game_data.o2 >= game_data.max_value):
		NewLevel._new_level()
		
		
