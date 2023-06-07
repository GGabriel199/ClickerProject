extends Node2D
class_name SaveFile

const save_path: String = "user://save_file.save"
var game_data = {"total_clicks": 0}

func ready():
	load_data()
	
func save_data():
	var file = FileAccess.open(save_path,FileAccess.WRITE)
	file.store_var(game_data)
	file.close()

func load_data() -> void:
	if not FileAccess.file_exists(save_path):
		game_data = {
		"total_clicks": 0,
	}
	save_data()
	var file = FileAccess.open(save_path,FileAccess.READ).get_var(game_data)
	file.close()
