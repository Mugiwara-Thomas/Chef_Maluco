extends Node

# Comidas
var Steak = preload("res://Objects/Steak.tscn")
var Pizza = preload("res://Objects/Pizza.tscn")
var Nacho = preload("res://Objects/Nacho.tscn")
var BoloDeChocolate = preload("res://Objects/boloDeChocolate.tscn")
var Donut = preload("res://Objects/donut.tscn")
var Gelatina = preload("res://Objects/gelatina.tscn")
var Hotdog = preload("res://Objects/hotdog.tscn")
var Pao = preload("res://Objects/pao.tscn")
var Pudim = preload("res://Objects/Pudim.tscn")
var Sanduiche = preload("res://Objects/sanduiche.tscn")

# Objetos
var Bota = preload("res://Objects/bota.tscn")
var Escudo = preload("res://Objects/Escudo.tscn")
var Chave = preload("res://Objects/chave.tscn")
var Bau = preload("res://Objects/bau.tscn")
var Moeda = preload("res://Objects/modea.tscn")
var Bomba = preload("res://Objects/Bomba.tscn")
var Ancora = preload("res://Objects/Ancora.tscn")

func _ready():
	randomize()
#	var comidas = [Bomba, Ancora, Bota, Escudo, Chave, Bau, Moeda, Steak, Pizza, Nacho, BoloDeChocolate, Donut, Gelatina, Hotdog, Pao, Pudim, Sanduiche]
	var comidas = [Ancora]
	for i in range(10):
		var tipos = comidas[randi()% comidas.size()]
		var comida = tipos.instance()
		# 330, 700  -  320 150
		comida.position = Vector2(rand_range(340,690), rand_range(310,160))
		add_child(comida)
