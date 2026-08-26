extends Button

func _pressed():
	if Global.velocidade > 0:
		Global.iniciou = true
