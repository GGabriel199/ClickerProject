extends Node

var sprite_rd = load("res://Assets/Objects/PlayerSkins/Coffee-Sheet.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	_animation()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _animation():
	var idle_tween = get_tree().create_tween()
	idle_tween.tween_property(self, "position", Vector2(-20, -10), 1).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_OUT)
	idle_tween.tween_property(self, "position", Vector2(10, 5), 1).set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_OUT)
	idle_tween.set_loops()
