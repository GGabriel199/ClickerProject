extends Node

@onready var save_file = SaveGame.game_data

func _ready():
	pass 


func _process(delta):
	_new_level(1)
	

func _new_level(new_level)-> void:
	if(save_file.o2 >= save_file.max_value):
		save_file.o2 -= save_file.o2
		save_file.multiplier = 1
		save_file.level += new_level
		save_file.max_value += save_file.max_value * 1/5
		
