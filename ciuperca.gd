extends Node

@onready var path_follow : PathFollow2D = $Path2D/PathFollow2D
@export var speed = 5
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	path_follow.progress += speed + delta
