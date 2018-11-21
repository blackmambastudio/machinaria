extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Model = Game_Mode.Cartridge_Class.new()

func _ready():
	add_child(Cartridge_Model)
	$Label.text = ""
	$FwLabel.visible = false
	$SwLabel.visible = false
	
	# connect signals from model
	# [ note ] this signals should be in a controller
	Cartridge_Model.connect("Update_Label", self, "update_label")
	Cartridge_Model.connect("Update_Ws", self, "update_ws")
	Cartridge_Model.connect("Update_Value", self, "update_value")

func set_props(props):
	Cartridge_Model.set_props(props)

func get_props():
	return Cartridge_Model.get_props()

func object_grab():
	$SFX.playsound()

func object_insert():
	$SFX.playsound()

func update_label(new_label):
	$Label.text = new_label

func update_ws(new_ws):
	var count = 1
	for w in new_ws:
		match count:
			1:
				$FwLabel.text = new_ws[0].text
				$FwLabel.add_color_override("font_color", new_ws[0].color)
				$FwLabel.visible = true
			2:
				$SwLabel.text = new_ws[1].text
				$SwLabel.add_color_override("font_color", new_ws[1].color)
				$SwLabel.visible = true
		count += 1

func update_value(new_val):
	$Value.text = String(new_val)