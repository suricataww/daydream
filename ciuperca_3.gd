extends Node   # attach this to ciuperca3

@onready var path_follow: PathFollow2D = $/root/Nivel2/ciuperca3/Path2D/PathFollow2D
@export var speed: float = 5  # pixels per second

func _process(delta: float) -> void:
	path_follow.progress += speed + delta


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('jucator'):
		body.killPlayer()
