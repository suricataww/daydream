class_name Story
extends Control


@onready var next_button = $MarginContainer/HBoxContainer/VBoxContainer/Button as Button

func _ready():
	next_button.pressed.connect(on_next_pressed)

func on_next_pressed () -> void:
	get_tree().change_scene_to_file("res://abilities1.tscn")
