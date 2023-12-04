extends Node

signal finished(next_level)
var collected = 0
@onready var points = $Points/bananas
@onready var tile_map = $TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_node(".")
	var bananas = points.get_children();
	for banana in bananas:
		#if instance.has_signal("finished"):
		banana.collected_banana.connect(colect_banana)

func colect_banana():
	collected += 1
	if collected >= 16:
		print_debug("got it")
		tile_map.set_layer_enabled(2, true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	print_debug(area)
	if collected >= 16:
		emit_signal("finished", "level_2")
	
