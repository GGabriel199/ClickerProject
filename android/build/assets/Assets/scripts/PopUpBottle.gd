extends Control

@onready var game_data = SaveGame.game_data
var points = 0
const max_points = 999999999

func _ready():
	$Clicks/Score.text = str(points)
	$Clicks/Score.text = "Score %S" % [game_data.total_clicks]

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
	_animations_and_sfx()
	game_data.total_clicks += 1
	$Clicks/Score.text = "Score %S" % [game_data.total_clicks]
	SaveGame.save_data()

func _animations_and_sfx()-> void:
	$AnimationPop.play("Bottle pop")
	$AnimationPop2.play("Bottle pop 2")
	$AnimationPlayer.play("BottleClick")
	$BottleSound.play()
