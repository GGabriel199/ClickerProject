extends Node

const SAVE_PATH = "user://save_file.save"
var player_node = NodePath()
var game_data = {
	"o2" : 0,
	"max_value" : 1000000,
	"level" : 1,
	"multiplier" : 1
}
var cost_dict = {cost = {
	"Soda": 50, "Wine": 150, "Chopp": 1200, "Multiplier": 500000
}}

func _ready():
	load_game()
	
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
	file.store_var(save_dict.player)
	file.store_line(JSON.new().stringify(save_dict))
	print("Game saved")
	file.close()
	
	return save_dict
	
func load_game():
	if FileAccess.file_exists(SAVE_PATH):
		var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
		var save_dict = {
			player = {
			"o2" : game_data.o2,
			"multiplier" : game_data.multiplier,
			"level" : game_data.level,
			"max_value": game_data.max_value,
			"cost": cost_dict.cost
			}
		}
		save_dict.player = file.get_as_text(true).to_int()
		var test_json_conv = JSON.new()
		save_dict.player = test_json_conv.get_data()
		var player = get_node(player_node)
		print("Game loaded")
		file.close()
	elif not FileAccess.file_exists(SAVE_PATH):
		return

func level_limits()-> void:
	if(game_data.o2 <= 0):
		game_data.o2 = 0
