extends Control

var heart_size: int = 250

func on_player_life_changed(player_hearts: float) -> void:
	$Vidas.rect_size.x = player_hearts * heart_size
