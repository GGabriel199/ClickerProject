class_name BottleSpread
extends Node

var points = 0
var max_points = 999999999
@onready var ap:AnimationPlayer = %AnimationPlayer

func _ready():
	$Clicks/Score.text = str(points)

func _process(delta):
	_max_value()
	

func _max_value()-> void:
	if(points >= max_points):
		points = max_points - 1
		get_node("Button").queue_free()

func _remove()-> void:
	$AnimationPlayer.stop()

func _on_button_pressed():
	points += 1
	$Clicks/Score.text = str(points)
	$AnimationPop.play("Bottle pop")
	$AnimationPop2.play("Bottle pop 2")
	$AnimationPlayer.play("BottleClick")
	$BottleSound.play()
