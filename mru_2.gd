extends Node2D

@onready var spinbox = $SpinBox

func _ready():
	$Tempo.text = "T = 0.00 s"
	$Distancia.text = "S = 0.00 m"

func _physics_process(delta):
	Global.velocidade = spinbox.value

	if Global.iniciou:
		Global.tempo += delta
		Global.distancia = Global.tempo * Global.velocidade

	$Tempo.text = "T = %.2f s" % Global.tempo
	$Distancia.text = "S = %.2f m" % Global.distancia
