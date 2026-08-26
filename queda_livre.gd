extends Node2D
func change_scene(scene_path: String) -> void:
	get_tree().change_scene_to_file(scene_path)


func _process(_delta: float) -> void:\
	if $VoltarMenu.button_pressed:
		change_scene("res://scenes/menu.tscn")
