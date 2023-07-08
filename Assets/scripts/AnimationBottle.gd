extends Node


func _ready():
	_animation()
	var anim = $AnimationPlayer
	anim.play("idle")

func _process(delta):
	pass
	
func _animation():
	var idle_tween = get_tree().create_tween()
	idle_tween.tween_property(self, "position", Vector2(-20, 10), .5).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_OUT)
	idle_tween.tween_property(self, "position", Vector2(10, -5), .5).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_OUT)
	idle_tween.set_loops()
