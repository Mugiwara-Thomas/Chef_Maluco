extends Node
var vida = 3

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func perde_vida():
	vida -=1
	if(vida == 0):
		get_tree().change_scene("res://Menu.tscn")	
