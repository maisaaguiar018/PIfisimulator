extends ParallaxBackground

func _physics_process(delta: float) -> void:
	if Global.inicio:
		Global.background -= Global.velocity * delta

	scroll_offset.x = Global.background
