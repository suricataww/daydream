class_name MainMenu
extends Control

@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/play as Button
@onready var exit_button = $MarginContainer/HBoxContainer/VBoxContainer/exit as Button
@onready var start_level = preload("res://main_menu.tscn") as PackedScene


func _ready():
	start_button.button_down.connect(on_play_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	
	
func on_play_pressed()	-> void:
	get_tree().change_scene_to_file("res://abilities1.tscn")
	
func on_exit_pressed()-> void:
	get_tree().quit()
