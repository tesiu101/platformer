class_name BaseLevel extends  Node

signal finished(next_level)
var collected = 0
var numOfBanamas = 0
var nextLevel;
@onready var points = $points/bananas
@onready var tile_map = $TileMap
@onready var exitDoor = $Area2D/CollisionShape2D


func _ready():
	var root = get_node(".")
	var bananas = points.get_children();
	numOfBanamas = bananas.size()
	for banana in bananas:
		banana.collected_banana.connect(colect_banana)
		
func colect_banana():
	collected += 1
	if collected >= numOfBanamas:
		tile_map.set_layer_enabled(2, true)

func _on_area_2d_area_entered(area):
	if collected >= numOfBanamas && nextLevel:
		emit_signal("finished", nextLevel)
