extends Timer

var Steak = preload("res://Objects/Steak.tscn")
var Pizza = preload("res://Objects/Pizza.tscn")
var Nacho = preload("res://Objects/Nacho.tscn")

func _on_Timer_timeout():
	randomize()
	var comidas = [Steak, Pizza, Nacho]
	for i in range(100):
		var tipos = comidas[randi()% comidas.size()]
		var comida = tipos.instance()
		comida.position = Vector2(rand_range(300,300), rand_range(350,350))
		add_child(comida)
