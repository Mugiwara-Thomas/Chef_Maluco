extends Control


func _ready():
	pass # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://main.tscn")
