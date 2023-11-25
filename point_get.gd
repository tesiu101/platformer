extends StaticBody2D

var animation: AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug(self.position)
	animation = get_node("animation")
	animation.animation_looped.connect(_on_finished)
	

func _on_finished():
	animation.pause()
	queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
