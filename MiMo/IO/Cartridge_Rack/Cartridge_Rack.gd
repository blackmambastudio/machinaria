tool
extends Container
var Cartridge_Slot =  preload("res://MiMo/Common/Cartridge_Slot/Cartridge_Slot.tscn")

const TOTAL_SLOTS = 6
var empty_slots = 0
signal Cartridges_Moved

func _ready():
	for i in range(1, TOTAL_SLOTS):
		var slot = Cartridge_Slot.instance()
		
		slot.position.x = $Cartridge_Slot_01.position.x
		slot.position.y = $Cartridge_Slot_01.position.y + (slot.texture.get_height() + 4)*i
		add_child(slot)
		move_child(slot, 2)
		slot.insert_object({"default": i})
		slot.name = "Cartridge_Slot_0" + str(i + 1)
		slot.connect("On_Insert", self, "cartridge_returned")
		slot.connect("On_Remove", self, "cartridge_removed")

	$Cartridge_Slot_01.insert_object({"default":0})
	$Cartridge_Slot_01.connect("On_Insert", self, "cartridge_returned")
	$Cartridge_Slot_01.connect("On_Remove", self, "cartridge_removed")

func open_rack():
	$Tween_Gate.interpolate_property($Hidden/Mouse_Lock_Area, "rect_position",
                Vector2(0, 0), Vector2(0, 600), 1.8,
                Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween_Gate.start()

func close_rack():
	$Tween_Gate.interpolate_property($Hidden/Mouse_Lock_Area, "rect_position",
                Vector2(0, 600), Vector2(0, 0), 1.8,
                Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween_Gate.start()

func cartridge_returned(props):
	empty_slots -= 1
	emit_signal("Cartridges_Moved", empty_slots)


func cartridge_removed():
	empty_slots += 1
	emit_signal("Cartridges_Moved", empty_slots)


func set_cartridges_info(cartridges_info):
	var index = 0
	for i in range(0, 6):
		var cartridge_slot = get_node("Cartridge_Slot_0" + str(i + 1))
		cartridge_slot.remove_object()
		
	for cartridge_info in cartridges_info:
		var cartridge_slot = get_node("Cartridge_Slot_0" + str(index + 1))
		cartridge_slot.insert_object(cartridge_info)
		index += 1
	
	empty_slots = 0
	
