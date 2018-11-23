extends Container

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Section_Model = Game_Mode.Cartridge_Section_Class.new()

signal Material_Updated
signal Material_Selected
var index = 0
var total_time = 0

func _ready():
	$Cartridge_Slot.connect("On_Insert", self, "on_new_cartridge")
	$Cartridge_Slot.connect("On_Remove", self, "on_remove_cartridge")

	$Hi_Button.connect("button_down", self, "activate_switch")
	$Hi_Button.connect("button_up", self, "button_up")


func on_new_cartridge(cartridge_properties):
	Cartridge_Section_Model.set_cartridge($Cartridge_Slot.inserted.Cartridge_Model)
	self.trigger_update()


func on_remove_cartridge():
	Cartridge_Section_Model.set_cartridge(null)
	self.trigger_update()


func activate_switch():
	#Cartridge_Section_Model.apply_mod(button_index)
	#self.trigger_update()
	emit_signal("Material_Selected", self.index, self.Cartridge_Section_Model.get_cartridge_props(), !$Hi_Button.pressed)
	$Hi_Button.modulate = ColorN("white")


func trigger_update():
	emit_signal("Material_Updated", self.index, self.Cartridge_Section_Model.get_cartridge_props())

func deactivate_switch():
	$Hi_Button.pressed = false
	button_up()
	pass

func button_up():
	$Hi_Button.modulate = ColorN("white")

func set_index(index):
	self.index = index
	$Order_Text.text = str(index)
	
func _process(delta):
	if !$Hi_Button.pressed: return
	total_time += delta
	var value = pow(cos(total_time*PI*2), 2)
	if value < 0.5:
		$Hi_Button.modulate = ColorN("white").darkened(0.3)
	else:
		$Hi_Button.modulate = ColorN("white")
	
	
	
