extends Control

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_StartButton_pressed():
	get_tree().change_scene("res://main.tscn")


func _on_Creditos_pressed():
	get_tree().change_scene("res://Créditos.tscn")
