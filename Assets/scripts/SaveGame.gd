extends Node

const SAVE_PATH := "user://save.json"

@export var o2 := 0
@export var multiplier := 1
@export var level := 1
@export var max_value := 1000000
@export var cost_soda := 50
@export var cost_wine := 150
@export var cost_chopp:= 1200
@export var cost_multiplier:= 500000

func _ready() -> void:
	load_json()

func save_json() -> void:
	var data := {
		"o2": o2,
		"multiplier": multiplier,
		"level": level,
		"max_value": max_value,
		"cost_soda": cost_soda,
		"cost_wine": cost_wine,
		"cost_chopp": cost_chopp,
		"cost_multiplier": cost_multiplier
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
	
	o2 = data["o2"]
	multiplier = data["multiplier"]
	level = data["level"]
	max_value = data["max_value"]
	cost_soda = data["cost_soda"]
	cost_wine = data["cost_wine"]
	cost_chopp = data["cost_chopp"]
	cost_multiplier = data["cost_multiplier"]
