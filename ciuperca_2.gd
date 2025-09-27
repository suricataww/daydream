extends Node  # attach this to ciuperca3

@onready var path_follow: PathFollow2D = $Path2D/PathFollow2D
@export var speed: float = 0.2

func _process(delta: float) -> void:
	if path_follow:
		path_follow.progress_ratio = fmod(path_follow.progress_ratio + speed * delta, 1.0)
