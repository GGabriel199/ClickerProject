extends Node

const SAVE_PATH := "user://save.json"

@onready var o2 := 0
@onready var multiplier := 1
@onready var level := 1
@onready var max_value := 1000000
var cost = {"Soda" : 50, "Wine" : 150, "Chopp": 1200, "Multiplier": 500000}

func _ready() -> void:
	load_json()

func save_json() -> void:
	var data := {
		"o2": o2,
		"multiplier": multiplier,
		"level": level,
		"max_value": max_value,
		"cost": cost
	}
	var json_data := JSON.stringify(data)
	var file_access := FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	file_access.store_line(json_data)
	file_access.close()


func load_json() -> void:
	if not FileAccess.file_exists(SAVE_PATH):
		return
	var file_access := FileAccess.open(SAVE_PATH, FileAccess.READ)
	var json_data := file_access.get_line()
	file_access.close()
	var data: Dictionary = JSON.parse_string(json_data)
	
	o2 = data.o2
	multiplier = data.multiplier
	level = data.level
	max_value = data.max_value
	cost = data.cost
