extends Area2D

@export var point_get: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	var blink = point_get.instantiate()
	blink.position = self.position
	add_sibling(blink)
	
	
	queue_free()
