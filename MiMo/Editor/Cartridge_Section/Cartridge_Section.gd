extends Container

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Section_Model = Game_Mode.Cartridge_Section_Class.new()

signal Material_Updated
var index = 0


func _ready():
	$Cartridge_Slot.connect("On_Insert", self, "on_new_cartridge")
	$Cartridge_Slot.connect("On_Remove", self, "on_remove_cartridge")
	
	$Lo_Button.connect("button_down", self, "activate_switch", [0])
	$Med_Button.connect("button_down", self, "activate_switch", [1])
	$Hi_Button.connect("button_down", self, "activate_switch", [2])


func on_new_cartridge(cartridge_properties):
	Cartridge_Section_Model.set_cartridge($Cartridge_Slot.inserted.Cartridge_Model)
	self.trigger_update()
	$Led_Indicator.turn_on()


func on_remove_cartridge():
	$Led_Indicator.turn_off()
	Cartridge_Section_Model.set_cartridge(null)
	self.trigger_update()


func activate_switch(button_index):
	Cartridge_Section_Model.apply_mod(button_index)
	self.trigger_update()


func trigger_update():
	emit_signal("Material_Updated", self.index, self.Cartridge_Section_Model.get_cartridge_props())
