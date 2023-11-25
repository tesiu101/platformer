extends Camera2D

@export var tilemap: TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	limit_left = -50
	limit_bottom = 660
	limit_right = 3250
	limit_top = -550


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
