extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var vida = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func restart_application():
	var executable_path = OS.get_executable_path()
	get_tree().quit()  # Quit the current instance of the application
	OS.execute(executable_path, [])  # Pass any command line arguments if needed
	Game.pontuacao = 0


	
func perde_vida():
	vida = vida - 1
	Game.vida = Game.vida - 1
		
