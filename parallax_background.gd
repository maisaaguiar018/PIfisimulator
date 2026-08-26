extends ParallaxBackground

func _physics_process(delta: float) -> void:
	if Global.iniciou:
		Global.scroll_background -= Global.velocidade * delta

	scroll_offset.x = Global.scroll_background
