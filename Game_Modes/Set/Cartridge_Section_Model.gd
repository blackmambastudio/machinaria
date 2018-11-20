extends "res://Game_Modes/Base/Cartridge_Section_Model.gd"

var selected = 0

func reset():
	.reset()
	selected = 0

func activate_button_01():
	selected = 0

func activate_button_02():
	selected = 1

func activate_button_03():
	selected = 2

func calculate_props():
	var props = cartridge.get_props().duplicate()
	return {
		"shape": props.shapes[selected],
		"color": props.colors[selected],
		"fill_style": props.fill_styles[selected],
		"texture": props.textures[selected]
	}