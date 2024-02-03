extends Node
@export var mainNode: Node 

var instance: Node

func unload_level():
	print_debug(instance)
	if instance != null:
		instance.call_deferred("queue_free")
	instance = null

func _load_level(level_name: String):
	unload_level()
	var level_path := "res://Levels/%s.tscn" % level_name
	var level_resource := load(level_path)
	instance = level_resource.instantiate();
	mainNode.add_child(instance)
	if instance.has_signal("finished"):
		instance.finished.connect(_load_level)
	

# Called when the node enters the scene tree for the first time.
func _ready():
	mainNode = get_node(".")
	_load_level("level_3")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _on_enter_porta(level): 
	pass
