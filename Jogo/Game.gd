extends Node

const MESA = "MESA"
const LIXO = "LIXO"
const COMIDA = "COMIDA"
var pontuacao = 0
var itens = 1
var vida = 3

func _ready():
	pass # Replace with function body.

func _process(_delta):
	if itens == 0 and vida > 0:
		get_tree().change_scene("res://Ganhou-cena.tscn")
		vida = 3
	if vida == 0: 
		get_tree().change_scene("res://Perdeu-cena.tscn")
		var label = get_node("Cenário/Mesa")	
		if label:
			print("Achei")
		vida = 3

		
