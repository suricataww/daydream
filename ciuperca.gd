extends Node

@onready var path_follow: PathFollow2D = $/root/Nivel2/ciuperca1/Path2D/PathFollow2D
@onready var path: Path2D = $/root/Nivel2/ciuperca1/Path2D

@export var speed: float = 100.0

func _process(delta: float) -> void:
	if path and path.curve:
		var length: float = path.curve.get_baked_length()
		path_follow.progress = fmod(path_follow.progress + speed * delta, length)

func _on_area_2d_body_entered(body: Node) -> void:
	if body.is_in_group(""):
		body.killPlayer()
