extends Button

@onready var spinbox = $"../SpinBox"

func _pressed():
	Global.iniciou = false
	Global.velocidade = 0.0
	Global.tempo = 0.0
	Global.distancia = 0.0
	Global.scroll_background = 0.0
	
	spinbox.value = 0
