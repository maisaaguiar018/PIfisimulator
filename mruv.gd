extends Node2D



func _ready():
	$"Time".text = "T = 0.00 s"
	$"Distance".text = "S = 0.00 m"
	$"velocidade".text = "V = 0.00 m/s"


func _physics_process(delta):
	if Global.inicio:
		Global.time += delta

		# Velocidade atual: V = V0 + at
		Global.velocity = Global.inicial_vel + Global.aceleration * Global.time

		# Distância: S = V0t + at²/2
		Global.distance = Global.inicial_vel * Global.time + (Global.aceleration * Global.time * Global.time) / 2

	$"Time".text = "T = %.2f s" % Global.time
	$"Distance".text = "S = %.2f m" % Global.distance
	$"velocidade".text = "V = %.2f m/s" % Global.velocity
