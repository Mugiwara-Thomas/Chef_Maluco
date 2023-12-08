extends Area2D

var mouseIn = false

func _ready():
	pass 
	
func _process(delta):
	if (mouseIn && Input.is_action_pressed("click")):
		global_position = get_global_mouse_position()


func _on_Node2D_area_entered(area):
	if area.is_in_group(Game.LIXO):
		
		queue_free()
		pass
		


func _on_Node2D_mouse_entered():
	mouseIn = true


func _on_Node2D_mouse_exited():
	mouseIn = false
