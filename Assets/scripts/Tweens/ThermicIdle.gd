extends Control

var random_value = 1
var player_data = SaveGame

	
func _on_pressed():
	player_data.o2 += player_data.multiplier
	print(player_data.o2)
	_tap_sounds()
	_animation_click()
	random_value = randi()%3 + 1
	player_data.save_json()
	var click_anim = $ThermicBottle/AnimationPlayer
	click_anim.play("Click")
	
func _tap_sounds():
	if(random_value == 1):
		$Sounds/BottleClickSound.play()
	if(random_value == 2):
		$Sounds/BottleClickSound2.play()
	if(random_value == 3):
		$Sounds/BottleClickSound3.play()
		

func _animation_click():
	var click_tween = get_tree().create_tween()
	click_tween.tween_property($ThermicBottle, "scale", Vector2.ONE * 5.5, .05)
	click_tween.tween_property($ThermicBottle, "scale", Vector2.ONE * 5, .05)


