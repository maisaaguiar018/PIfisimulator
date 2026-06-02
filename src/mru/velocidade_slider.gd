extends HSlider


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var physics_object: PhysicsObject = Utils.get_physics_object(get_tree())
	if not physics_object.running:
		self.editable = true
		physics_object.set_velocidade(self.value)
	else:
		self.editable = false

