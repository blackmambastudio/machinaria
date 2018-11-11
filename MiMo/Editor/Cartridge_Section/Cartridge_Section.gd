extends Container

signal Material_Updated
var index = 0


func _ready():
	$Cartridge_Slot.connect("On_Insert", self, "on_new_cartridge")
	$Cartridge_Slot.connect("On_Remove", self, "on_remove_cartridge")
	
	$Lo_Button.connect("button_down", self, "activate_switch", [0])
	$Med_Button.connect("button_down", self, "activate_switch", [1])
	$Hi_Button.connect("button_down", self, "activate_switch", [2])


func on_new_cartridge(cartridge_properties):
	self.trigger_update()
	$Led_Indicator.turn_on()


func on_remove_cartridge():
	$Led_Indicator.turn_off()
	self.trigger_update()


func activate_switch(button_index):
	self.trigger_update()


func trigger_update():
	pass
