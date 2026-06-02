extends VBoxContainer


var espaco: float = 0.0
var espaco_inicial: float = 0.0
var velocidade: float = 0.0
var tempo: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var physics_object = Utils.get_physics_object(get_tree())


	espaco = physics_object.position.x
	espaco_inicial = physics_object.posicao_inicial
	velocidade = physics_object.speed
	tempo = physics_object.timer


	var valores: Array[float] = [
		espaco,
		espaco_inicial,
		velocidade,
		tempo
	]
	var texto_original: Dictionary[String,String] = {
		"espaco": "S = ",
		"espaco_inicial": "So = ",
		"velocidade": "v = ",
		"tempo": "t = "
	}

	var index: int = 0
	for container in get_children():
		var label: Label = container.get_child(0)
		label.text = "%s %.2f" % [texto_original[label.name],valores[index]]
		index += 1
