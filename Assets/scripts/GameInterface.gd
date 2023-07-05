extends Control

@onready var player_file = SaveGame

func _process(delta):
	$Panel/clicksnum.text = "Clicks: %s" % str(player_file.o2)
	$GroundPanel/MaxValue.text = "Max Value: %s" % str(player_file.max_value)
	$GroundPanel/Multiplier.text = "x%s" % str(player_file.multiplier)
	$GroundPanel/PlayerLevel.text = "Level: %s" % str(player_file.level)
