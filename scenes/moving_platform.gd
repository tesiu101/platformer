extends Node2D

@export var animationSpeed = 1.0
@export var horizontal = true
@export var startTime = 0.0
@onready var animator = $AnimatableBody2D/AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	if horizontal: 
		animator.play("move_llop", -1, animationSpeed)
	else:
		animator.play("vertical", -1, animationSpeed)
		
	animator.advance(0)
	await get_tree().process_frame
	animator.advance(startTime)
