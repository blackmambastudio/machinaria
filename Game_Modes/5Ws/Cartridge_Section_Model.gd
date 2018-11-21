"""
┏━ 5Ws ━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┣━━━━ Cartridge Section Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""
extends "res://Game_Modes/Base/Cartridge_Section_Model.gd"

# ------------------------------------------------------------- define variables
var value_mod = [false, false, false]

# ------------------------------------------------------------- define functions
func reset():
	.reset()
	value_mod = [false, false, false]

func set_cartridge(cartridge):
	.set_cartridge(cartridge)
	reset()

func activate_button_01():
	value_mod[0] = true

func activate_button_02():
	value_mod[1] = true

func activate_button_03():
	value_mod[2] = true

func calculate_props():
	var props = cartridge.get_props().duplicate()
	return props