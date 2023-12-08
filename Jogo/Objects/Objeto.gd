extends Area2D

var mouseIn = false

func _ready():
	pass 
	
func _process(delta):
	if (mouseIn && Input.is_action_pressed("click")):
		global_position = get_global_mouse_position()



func _on_Pizza_area_entered(area):
		if area.is_in_group(Game.LIXO):
			queue_free()
			Score.perde_vida()
		pass


func _on_Pizza_mouse_exited():
	mouseIn = false	
	pass # Replace with function body.


func _on_Pizza_mouse_entered():
		mouseIn = true


func _on_Steak_area_entered(area):
	pass # Replace with function body.


func _on_Steak_mouse_entered():
	pass # Replace with function body.


func _on_Steak_mouse_exited():
	pass # Replace with function body.
