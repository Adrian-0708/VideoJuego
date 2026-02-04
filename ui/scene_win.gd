extends CanvasLayer

const LEVEL_FILE = "res://niveles/level_1.tscn"
const INICIO_FILE = "res://ui/inicio.tscn"

func set_title(title):
	$VBoxContainer/Label.text = title

func _on_button_pla_down():
	get_tree().change_scene_to_file(LEVEL_FILE)

func _on_button_ini_down():
	get_tree().change_scene_to_file(INICIO_FILE)
	
func _on_button_sal_down():
	get_tree().quit()
