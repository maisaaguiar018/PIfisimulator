extends PhysicsObject

func mru(So: float,v: float,t: float) -> float:
	return So + v * t

func _physics_process(delta: float) -> void:
	if not self.running:
		return

	self.timer += delta
	self.position.x = mru(self.posicao_inicial,speed,timer)

	print_debug("%s = %s + %s x %s" % [self.position.x,self.posicao_inicial,speed,timer])
	
	move_and_slide()
