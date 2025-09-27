extends Area2D

var entered = false

func _on_Area2D_body_entered(body: Node):
	entered = true

func _on_Area2D_body_exited(body: Node):
	entered = false

func _physics_process (_delta):
	if entered:
		get_tree().change_scene_to_file("res://Nivel2.tscn")
