extends Node

@onready var save_file = SaveGame.game_data

func _ready():
	pass 


func _process(delta):
	pass

func _new_level()-> void:
	save_file.o2 -= save_file.o2
	save_file.multiplier = 1
	save_file.level += 1
	save_file.max_value += save_file.max_value * 1/5
