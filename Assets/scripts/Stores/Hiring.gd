extends Node


func _ready():
	pass # Replace with function body.

func _on_back_pressed():
	$".".hide()
	$"../GameInterface".show()
	get_tree().paused = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
