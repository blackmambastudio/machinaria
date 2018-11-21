extends "res://Game_Modes/Base/Cartridge_Section_Model.gd"

var value_mod = 0

func reset():
	.reset()
	value_mod = 0

func activate_button_01():
	value_mod -= 1

func activate_button_02():
	value_mod = 0

func activate_button_03():
	value_mod += 1

func calculate_props():
	var props = cartridge.get_props().duplicate()
	return props