extends Node2D

var show_timer = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start(show_timer)
	$Sprite2D.show()

func _on_timer_timeout():
	queue_free()
