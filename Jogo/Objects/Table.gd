extends Sprite

var mouseIn = false
export var ancora: PackedScene

func _ready():
	add_to_group(Game.MESA)
	pass 
	
func _process(delta):
	pass
	
func _on_Area2D_mouse_entered():	
	print("Mouse Entrou")
	mouseIn = true

func _on_Area2D_mouse_exited():
	print("Mouse Saiu")
	mouseIn = false
