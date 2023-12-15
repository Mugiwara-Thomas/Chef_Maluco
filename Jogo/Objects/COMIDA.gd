extends Area2D

var mouseIn = false
var estaSegurandoObjeto = false
var objetoAtual: Object = null

func _ready():
	pass 

func _process(delta):
	if (mouseIn && Input.is_action_pressed("click")):
		if !estaSegurandoObjeto:
			var objeto = get_node(".")  # Substitua pelo caminho correto do nó do objeto que você quer pegar.
			
			if objeto != null:
				objetoAtual = objeto
				objetoAtual.global_position = get_global_mouse_position()
				estaSegurandoObjeto = true

	if estaSegurandoObjeto:
		objetoAtual.global_position = get_global_mouse_position()

func _on_Node2D_area_entered(area):
	if area.is_in_group(Game.LIXO):
		queue_free()
		var pontuacao2 = Game.pontuacao - 1
		Game.pontuacao = Game.pontuacao - 1
		
		Game.itens = Game.itens - 1
		var item = Game.itens
		print(item)
		
		Score.perde_vida()
	elif area.is_in_group(Game.COMIDA):
		if estaSegurandoObjeto:
			objetoAtual.queue_free()
			var pontuacao2 = Game.pontuacao + 1
			Game.pontuacao = Game.pontuacao + 1
			
			Game.itens = Game.itens - 1
			var item = Game.itens
			print(item)
			estaSegurandoObjeto = false
			

func _on_Node2D_mouse_exited():
	mouseIn = false

func _on_Node2D_mouse_entered():
	mouseIn = true
