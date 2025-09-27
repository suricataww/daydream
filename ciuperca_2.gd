extends Node

@onready var path_follow: PathFollow2D = $Path2D/PathFollow2D
@export var speed: float = 5.0

func _process(delta: float) -> void:
	# Wrap progress_ratio so it loops from 0 → 1 continuously
	path_follow.progress_ratio = fmod(path_follow.progress_ratio + (speed * delta), 1.0)
