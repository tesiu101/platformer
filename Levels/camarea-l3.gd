extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready():
	make_current()
	limit_left = -40
	limit_bottom = 9960
	limit_right = 2150
	limit_top = 0
