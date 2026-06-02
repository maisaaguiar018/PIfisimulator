extends Button


@onready var vezes_pausado : int = 0
@onready var vezes_pausado_antes : int = 0

func pausar(objeto: PhysicsObject) -> void:
	objeto.running = false
	if vezes_pausado == 0:
		return

	self.text = "Retomar"

func despausar(objeto: PhysicsObject) -> void:
	if vezes_pausado == 0:
		vezes_pausado += 1
	objeto.running = true
	self.text = "Pausar"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var physics_object : PhysicsObject = Utils.get_physics_object(get_tree())

	if self.button_pressed:
		despausar(physics_object)
	else:
		pausar(physics_object)
