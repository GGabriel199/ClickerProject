extends Control

@onready var player_file = SaveGame

func _ready():
	_gui_anim()
	
func _process(delta):
	$Panel/clicksnum.text = "Clicks: %s" % str(player_file.o2)
	$GroundPanel/MaxValue.text = "Max Value: %s" % str(player_file.max_value)
	$GroundPanel/Multiplier.text = "x%s" % str(player_file.multiplier)
	$GroundPanel/PlayerLevel.text = "Level: %s" % str(player_file.level)

func _gui_anim():
	var containers_anim = get_tree().create_tween()
	var finger_anim = get_tree().create_tween()
	containers_anim.tween_property($HBoxContainer, "position", Vector2(82, 130), 3).set_ease(Tween.EASE_OUT)
	containers_anim.tween_property($HBoxContainer, "position", Vector2(62, 131), 3).set_ease(Tween.EASE_OUT)
	containers_anim.set_loops()
	finger_anim.tween_property($Panel/HiringBtn,"position", Vector2(424,77), 1).set_trans(Tween.TRANS_BOUNCE)
	finger_anim.tween_property($Panel/HiringBtn,"position", Vector2(426,77), 1).set_trans(Tween.TRANS_BOUNCE)
	finger_anim.set_loops()
	
	
