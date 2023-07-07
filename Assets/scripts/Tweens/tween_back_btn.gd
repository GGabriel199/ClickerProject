extends TextureButton

func _ready():
	var back_btn = get_tree().create_tween()
	back_btn.tween_property(self, "position", Vector2(45, 29), .25).set_trans(Tween.TRANS_BOUNCE)
	back_btn.tween_interval(1)
	back_btn.tween_property(self, "position", Vector2(35, 29), .25).set_trans(Tween.TRANS_BOUNCE)
	back_btn.set_loops()
