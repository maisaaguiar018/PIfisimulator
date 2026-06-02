extends Control



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func change_scene(scene_path: String) -> void:
	get_tree().change_scene_to_file(scene_path)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if $button_mru.button_pressed:
		change_scene('res://src/mru/mru.tscn')
	# if $button_ql.button_pressed:
	# 	change_scene('res://src/queda_livre/queda_livre.tscn')
	# if $button_mruv.button_pressed:
	# 	change_scene('res://src/mruv/mruv.tscn')
