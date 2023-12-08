extends Area2D

func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		# Aqui você pode adicionar a lógica para mudar a cena
		get_tree().change_scene("res://main.tscn")
