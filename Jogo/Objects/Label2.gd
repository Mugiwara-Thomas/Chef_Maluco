extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_text("ooooooooooooooi")
	var texto = self.get_text()
	print (texto)

func _process(_delta):
	self.set_text('meu ovo')
