extends Node2D

var spawnBottle : Node2D
@onready var selectedBottle = self

func _ready():
	spawnBottle = load("res://Assets/Scripts/Global.gd").instantiate()
	spawnBottle.global_position = selectedBottle.global_position
	add_child(spawnBottle)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
