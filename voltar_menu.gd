extends Button
func _ready() -> void:
	pass
func _process(_delta: float) -> void:
	if self.button_pressed:
		get_tree().change_scene_to_file('res://scenes/menu.tscn')
