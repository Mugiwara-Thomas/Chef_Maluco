extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _init() -> void:
	var screen_size: Vector2 = OS.get_screen_size()
	var window_size: Vector2 = OS.get_window_size()
	
	OS.set_window_position(screen_size * 0.5 - window_size * 0.5)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

