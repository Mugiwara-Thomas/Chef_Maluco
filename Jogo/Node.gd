extends Node

# Comidas
var comidas = [preload("res://Objects/bau.tscn"),preload("res://Objects/Bomba.tscn"),preload("res://Objects/boloDeChocolate.tscn"),
preload("res://Objects/donut.tscn"),preload("res://Objects/Escudo.tscn"),preload("res://Objects/gelatina.tscn"),
preload("res://Objects/hotdog.tscn"),preload("res://Objects/modea.tscn"),preload("res://Objects/Nacho.tscn"),preload("res://Objects/pao.tscn"),
preload("res://Objects/Pizza.tscn"),preload("res://Objects/Pudim.tscn"),preload("res://Objects/Steak.tscn"),preload("res://Objects/sanduiche.tscn"),]

# Grupo para objetos de comida
const GROUP_COMIDAS = "comidas_group"

func add_comidas_to_group():
	var comidas_nodes = get_tree().get_nodes_in_group(GROUP_COMIDAS)
	print(comidas_nodes)
	for comida in comidas_nodes:
		comida.group = GROUP_COMIDAS
		print("Comida adicionada ao grupo:", comida)

func _ready():
	randomize()

	var matrix = []

	# Definindo as posições x e y para as comidas
	var positions_x = [350, 420, 490, 560, 630, 690]
	var positions_y = [170, 290]

	for y in range(positions_y.size()):
		for x in range(positions_x.size()):
			matrix.append(create_food(positions_x[x], positions_y[y]))
	add_comidas_to_group()

	# Configura exceções de colisão para o grupo GROUP_COMIDAS
	configure_collision_exceptions()

# Função para criar e adicionar um objeto de comida
func create_food(pos_x, pos_y):
	var tipos = comidas[randi() % comidas.size()]
	var comida = tipos.instance()
	comida.position = Vector2(pos_x, pos_y)
	add_child(comida)
	return [pos_x, pos_y]

# Função para configurar exceções de colisão para o grupo GROUP_COMIDAS
func configure_collision_exceptions():
	# Obtém todas as comidas no grupo GROUP_COMIDAS
	var comidas_nodes = get_tree().get_nodes_in_group(GROUP_COMIDAS)

	# Configura exceções de colisão entre todas as comidas no grupo
	for comida_a in comidas_nodes:
		for comida_b in comidas_nodes:
			if comida_a != comida_b:
				comida_a.add_collision_exception_with(comida_b)
