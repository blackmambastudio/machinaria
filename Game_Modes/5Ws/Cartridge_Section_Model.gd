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
	value_mod[0] = !value_mod[0]

func activate_button_02():
	value_mod[1] = !value_mod[1]

func activate_button_03():
	value_mod[2] = !value_mod[2]

func calculate_props():
	var props = cartridge.get_props().duplicate()
	match value_mod:
		[true, false, false]:
			props.value += 3
		[false, true, false]:
			props.value += 2
		[false, false, true]:
			props.value += 1
		[true, true, false]:
			props.value += 5
		[false, true, true]:
			props.value += 6
		[true, false, true]:
			props.value += 7
		[true, true, true]:
			props.value += 4
	return props