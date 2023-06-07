extends Control

const max_points = 999999999
var player = Player.new()

func _ready():
	player.skin_name = "Glass Bottle"
	$Clicks/Score.text = str(player.score.value)

func _process(delta):
	pass

func _remove()-> void:
	$AnimationPlayer.stop()
	
func _on_button_pressed():
	player.score.value += 1
	$Clicks/Score.text = str(player.score.value)
	print(player.score.value)
	print("The bottle: " + player.skin_name)
	_animations_and_sfx()

func _animations_and_sfx()-> void:
	$AnimationPop.play("Bottle pop")
	$AnimationPop2.play("Bottle pop 2")
	$AnimationPlayer.play("BottleClick")
	$BottleSound.play()
