"""
┏━ Meaningful Story ━━━━━━━━━━━━━┓
┣━━━━ Cartridge Section Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""
extends "res://Game_Modes/Base/Cartridge_Section_Model.gd"

# ------------------------------------------------------------- define variables
var value_mod = 0

# ------------------------------------------------------------- define functions
func reset():
	.reset()
	value_mod = 0

func set_cartridge(cartridge):
	.set_cartridge(cartridge)
	if value_mod > 0:
		value_mod = 0

func activate_button_01():
	value_mod = 1

func activate_button_02():
	value_mod = 2

func activate_button_03():
	value_mod = 3

func calculate_props():
	var props = cartridge.get_props().duplicate()
	props.starting += value_mod
	if props.starting > 90:
		props.starting = 65
	# update the interface
	cartridge.update_label(props.starting)
	return props