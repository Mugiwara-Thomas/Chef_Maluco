extends Node2D

var sprite2: Sprite
var timer: Timer

func _ready():
	# Certifique-se de configurar o Sprite2 corretamente no editor ou dinamicamente aqui
	sprite2 = $Sprite2

	# Crie e configure o temporizador
	timer = Timer.new()
	timer.wait_time = 5.0  # 5 segundos
	timer.one_shot = true
	add_child(timer)

	# Conecte o sinal "timeout" do temporizador à função que removerá o Sprite2
	timer.connect("timeout", self, "_on_timer_timeout")

	# Inicie o temporizador
	timer.start()

func _on_timer_timeout():
	# Remova o Sprite2 após o tempo decorrido
	sprite2.queue_free()
