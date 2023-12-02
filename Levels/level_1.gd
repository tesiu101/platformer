extends Node

signal finished(next_level)
var dupa = "test"

# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_node(".")
	
	
	
	
	#root.connect()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	print_debug(area)
	emit_signal("finished", "level_2")
	
