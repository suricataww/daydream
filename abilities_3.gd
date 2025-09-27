class_name Abilities3
extends Control

@onready var health_button = $MarginContainer/HBoxContainer/VBoxContainer/health as Button
@onready var speed_button = $MarginContainer/HBoxContainer/VBoxContainer/speed as Button
@onready var jump_button = $MarginContainer/HBoxContainer/VBoxContainer/jump as Button

func _ready():
	health_button.pressed.connect(on_health_pressed)
	speed_button.pressed.connect(on_speed_pressed)
	jump_button.pressed.connect(on_jump_pressed)

func on_health_pressed() -> void:
	Global.speed_upgrade = false
	Global.jump_upgrade = false
	get_tree().change_scene_to_file("res://nivel3.tscn")

func on_speed_pressed() -> void:
	Global.speed_upgrade = true
	Global.jump_upgrade = false
	get_tree().change_scene_to_file("res://nivel3.tscn")

func on_jump_pressed() -> void:
	Global.jump_upgrade = true
	Global.speed_upgrade = false
	get_tree().change_scene_to_file("res://nivel3.tscn")
	
