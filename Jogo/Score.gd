extends Node
var vida = 3

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func restart_application():
	var executable_path = OS.get_executable_path()
	get_tree().quit()  # Quit the current instance of the application
	OS.execute(executable_path, [])  # Pass any command line arguments if needed
	
func perde_vida():
	vida -=1
	if(vida == 0):
		restart_application()
