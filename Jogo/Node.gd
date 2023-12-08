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
	var comidas = [Bomba, Ancora, Escudo, Chave, Bau, Moeda, Steak, Pizza,BoloDeChocolate, Donut, Gelatina, Hotdog, Pao, Pudim, Sanduiche]
#	var comidas = [Gelatina]
	var matrix=[]
	for x in range(18):
		matrix.append([])
		matrix[x]=[]
		for y in range(2):
			matrix[x].append([])
			matrix[x][y]=0
	
	matrix[0][0] = 350
	matrix[0][1] = 170
	var tipos = comidas[randi()% comidas.size()]
	var comida = tipos.instance()
	comida.position = Vector2(matrix[0][0], matrix[0][1])
	add_child(comida)
	
	matrix[1][0] = 420
	matrix[1][1] = 170
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[1][0], matrix[1][1])
	add_child(comida)
	
	matrix[2][0] = 490
	matrix[2][1] = 170
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[2][0], matrix[2][1])
	add_child(comida)

	matrix[3][0] = 560
	matrix[3][1] = 170
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[3][0], matrix[3][1])
	add_child(comida)
	
	matrix[4][0] = 630
	matrix[4][1] = 170
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[4][0], matrix[4][1])
	add_child(comida)
	
	matrix[5][0] = 690
	matrix[5][1] = 170
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[5][0], matrix[5][1])
	add_child(comida)

# Segunda linha

	matrix[6][0] = 350
	matrix[6][1] = 230
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[6][0], matrix[6][1])
	add_child(comida)
	
	matrix[7][0] = 420
	matrix[7][1] = 230
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[7][0], matrix[7][1])
	add_child(comida)
	
	matrix[8][0] = 490
	matrix[8][1] = 230
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[8][0], matrix[8][1])
	add_child(comida)

	matrix[9][0] = 560
	matrix[9][1] = 230
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[9][0], matrix[9][1])
	add_child(comida)
	
	matrix[10][0] = 630
	matrix[10][1] = 230
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[10][0], matrix[10][1])
	add_child(comida)
	
	matrix[11][0] = 690
	matrix[11][1] = 230
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[11][0], matrix[11][1])
	add_child(comida)
	
# Terceira Linha

	matrix[12][0] = 350
	matrix[12][1] = 290
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[12][0], matrix[12][1])
	add_child(comida)
	
	matrix[13][0] = 420
	matrix[13][1] = 290
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[13][0], matrix[13][1])
	add_child(comida)
	
	matrix[14][0] = 490
	matrix[14][1] = 290
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[14][0], matrix[14][1])
	add_child(comida)

	matrix[15][0] = 560
	matrix[15][1] = 290
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[15][0], matrix[15][1])
	add_child(comida)
	
	matrix[16][0] = 630
	matrix[16][1] = 290
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[16][0], matrix[16][1])
	add_child(comida)
	
	matrix[17][0] = 690
	matrix[17][1] = 290
	tipos = comidas[randi()% comidas.size()]
	comida = tipos.instance()
	comida.position = Vector2(matrix[17][0], matrix[17][1])
	add_child(comida)
	
	
