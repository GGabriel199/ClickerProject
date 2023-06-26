extends Control

@onready var player_data = SaveGame.game_data
var times_clicked = 0
	
func _process(delta):
	$CanvasGame/Panel/clicksnum.text = "Clicks: %s" % str(player_data.o2)
	$CanvasGame/GroundPanel/MaxValue.text = "Max Value: %s" % str(player_data.max_value)
	$CanvasGame/GroundPanel/PlayerLevel.text = "Level: %s" % str(player_data.level)
	$CanvasGame/GroundPanel/Multiplier.text = "x%s" % str(player_data.multiplier)
	
func _on_Button_pressed():
	player_data.o2 += player_data.multiplier
	print(player_data.o2)
	times_clicked += 1
	_tap_sounds()
	SaveGame.save_game()

func _tap_sounds():
	if(times_clicked >= 0):
		$Sounds/BottleClickSound.play()
	if(times_clicked >= 4):
		$Sounds/BottleClickSound.stop()
		$Sounds/BottleClickSound2.play()
	if(times_clicked >= 7):
		$Sounds/BottleClickSound2.stop()
		$Sounds/BottleClickSound3.play()
		times_clicked = 0
