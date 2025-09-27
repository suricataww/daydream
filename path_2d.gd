extends Path2D

@onready var path_follow: PathFollow2D = $PathFollow2D

# Viteza în pixeli pe secundă
@export var speed: float = 324.0

func _process(delta: float) -> void:
	path_follow.progress += speed * delta
