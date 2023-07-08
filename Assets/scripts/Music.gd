extends Node

var random_number
@onready var song1 = $Theme1
@onready var song2 = $Theme2
@onready var song3 = $Theme3

func _ready():
	random_number = randi()%3 + 1
	
func _on_ready():
	_BGM()

func _BGM():
	if(random_number == 1):
		song1.play()
	elif(random_number == 2):
		song2.play()
	else:
		song3.play()

func _on_theme_1_finished():
	song2.play()

func _on_theme_2_finished():
	song3.play()

func _on_theme_3_finished():
	song1.play()


