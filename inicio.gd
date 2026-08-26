extends Button

@onready var spinboxV = $"../vel_inicial"
@onready var spinboxA = $"../Aceleration"

func _pressed():
	Global.inicial_vel = spinboxV.value
	Global.aceleration = spinboxA.value

	if Global.inicial_vel > 0 and Global.aceleration > 0:
		Global.inicio = true
