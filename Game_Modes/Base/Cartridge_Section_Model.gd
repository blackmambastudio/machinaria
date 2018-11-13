extends Node

var cartridge

func set_cartridge(cartridge):
	self.cartridge = cartridge
	if !cartridge:
		reset()
	
func reset():
	pass

func get_cartridge_props():
	if !cartridge:
		return null
	return self.calculate_props()

func apply_mod(index):
	match index:
		0: self.activate_button_01()
		1: self.activate_button_02()
		2: self.activate_button_03()

func activate_button_01():
	pass

func activate_button_02():
	pass

func activate_button_03():
	pass

func calculate_props():
	return cartridge.get_props()