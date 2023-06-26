extends Node


func _ready():
	audio_play()


func _process(delta):
	pass

static func audio_play():
	$AudioStreamPlayer2D.play()
