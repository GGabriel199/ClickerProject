extends Control

@onready var player_data = SaveGame.game_data
var random_value = 1
	
func _process(delta):
	$Control2/CanvasGame/Panel/clicksnum.text = "Clicks: %s" % str(player_data.o2)
	$CanvasGame/GroundPanel/MaxValue.text = "Max Value: %s" % str(player_data.max_value)
	$CanvasGame/GroundPanel/PlayerLevel.text = "Level: %s" % str(player_data.level)
	$CanvasGame/GroundPanel/Multiplier.text = "x%s" % str(player_data.multiplier)
	
func _on_Button_pressed():
	player_data.o2 += player_data.multiplier
	print(player_data.o2)
	_tap_sounds()
	SaveGame.save_game()
	random_value = randi()%3 + 1

func _tap_sounds():
	if(random_value == 1):
		$Sounds/BottleClickSound.play()
	if(random_value == 2):
		$Sounds/BottleClickSound2.play()
	if(random_value == 3):
		$Sounds/BottleClickSound3.play()
