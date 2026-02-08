extends CanvasLayer

const LEVEL_FILE = "res://niveles/level_1.tscn"
const CONTROLES_FILE = "res://ui/controles.tscn"

func _on_button_play_down():
	get_tree().change_scene_to_file(LEVEL_FILE)

func _on_button_controles_down():
	get_tree().change_scene_to_file(CONTROLES_FILE)

func _on_button_exit_down():
	get_tree().quit()
