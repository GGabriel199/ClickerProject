extends Control

var random_value = 1
	
var player_data = SaveGame
	
func _on_Button_pressed():
	player_data.o2 += player_data.multiplier
	print(player_data.o2)
	_tap_sounds()
	random_value = randi()%3 + 1

func _tap_sounds():
	if(random_value == 1):
		$Sounds/BottleClickSound.play()
	if(random_value == 2):
		$Sounds/BottleClickSound2.play()
	if(random_value == 3):
		$Sounds/BottleClickSound3.play()
