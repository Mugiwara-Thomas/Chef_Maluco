extends Node

const MESA = "MESA"
const LIXO = "LIXO"
const COMIDA = "COMIDA"
var pontuacao = 0
var itens = 12
var vida = 3
var inGame = true

func _ready():
	pass # Replace with function body.

func _process(_delta):
	if itens == 0 and inGame:
		vida = -1
		inGame = false
	if  vida < 0:
		get_tree().change_scene("res://Ganhou-cena.tscn")
		vida = 3
		inGame = true
		itens = 12
	if vida == 0: 
		get_tree().change_scene("res://Perdeu-cena.tscn")
		var label = get_node("Cenário/Mesa")	
		vida = 3
		inGame = true
		itens = 12

		
