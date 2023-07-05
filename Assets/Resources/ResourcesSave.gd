extends Resource
class_name SaveData

var save_path = "user://save/"
var save_name = "PlayerSave.tres"

var playerData = Player_Data.new()

func _ready():
	verify_save_directory(save_path)
	
func verify_save_directory(path : String):
	DirAccess.make_dir_absolute(path)

func _write_savegame():
	ResourceSaver.save(playerData, save_path + save_name)
	print("game saved")
	
func load_savegame():
	playerData = ResourceLoader.load(save_path + save_name).duplicate(true)
	print("game loaded")
