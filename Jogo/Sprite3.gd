extends Sprite  # Supondo que você está anexando este script diretamente ao nó Sprite2

var score_script: Score  # Referência ao script Score.gd
var timer: Timer

func _ready():
	# Obtém a referência ao script Score.gd
	score_script = get_node("/root/Score")

	# Crie e configure o temporizador
	timer = Timer.new()
	timer.wait_time = 0.1  # Intervalo de verificação (ajuste conforme necessário)
	timer.one_shot = false
	add_child(timer)

	# Conecte o sinal "timeout" do temporizador à função que verifica a condição
	timer.connect("timeout", self, "_on_timer_timeout")

	# Inicie o temporizador
	timer.start()

func _on_timer_timeout():
	# Verifica se a variável vida é igual a 2
	if score_script.vida == 1:
		# Remova o Sprite2
		queue_free()
