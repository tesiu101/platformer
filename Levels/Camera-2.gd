extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	make_current()
	limit_left = -40
	limit_bottom = 1290
	limit_right = 7050
	limit_top = 0
