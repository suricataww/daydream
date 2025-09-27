extends Area2D

var entered: bool = false

func _on_body_entered(body: Node2D) -> void:
	entered = true

func _on_body_exited(body: Node2D) -> void:
	entered = false

func _physics_process(delta: float) -> void:
	if entered and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://Nivel 2.tscn")
