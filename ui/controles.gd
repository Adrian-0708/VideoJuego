extends CanvasLayer

const MENU_FILE = "res://ui/inicio.tscn"

func _on_button_button_down():
	get_tree().change_scene_to_file(MENU_FILE)
