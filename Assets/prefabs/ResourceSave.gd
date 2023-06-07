extends Resource
class_name Player

const SAVE_PATH = "user://save_file.tres"

@export var skin_name = ""
@export var background = ""
@export var score = {
	"value": 0
	}

func _ready():
	load_savegame()

func write_savegame():
	var result = ResourceSaver.save(score)
	assert(result == OK)

func load_savegame():
	if ResourceLoader.exists(SAVE_PATH):
		var player = ResourceLoader.load(SAVE_PATH)
		print("Game loaded")
		if player is Player:
			return player
