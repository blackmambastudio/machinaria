extends "res://Interlude/Interlude.gd"


func load_props(props):
	$anchorman_results_1_logo.visible = true

func close_scene():
	$anchorman_results_1_logo.visible = false
	.close_scene()