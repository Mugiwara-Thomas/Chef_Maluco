extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass 
	
func _process(_delta):
	var texto = "Pontuação: " + str(Game.pontuacao)
	self.text = texto
