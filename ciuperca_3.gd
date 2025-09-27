extends Node   # attach this to ciuperca3

@onready var path_follow: PathFollow2D = $Path2D/PathFollow2D
@export var speed: float = 100.0   # pixels per second

func _process(delta: float) -> void:
	if path_follow and path_follow.curve:
		var length = path_follow.curve.get_baked_length()
		path_follow.progress = fmod(path_follow.progress + speed * delta, length)
