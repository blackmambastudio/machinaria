extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Model = Game_Mode.Cartridge_Class.new()

func _ready():
	add_child(Cartridge_Model)
	$Label.text = ""
	
	# connect signals from model
	# [ note ] this signals should be in a controller
	Cartridge_Model.connect("Update_Label", self, "update_label")
	Cartridge_Model.connect("Update_Ws", self, "update_ws")

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
	if new_ws.what:
		$FwLabel.text = "what"
		$FwLabel.visible = true
		$FwLabel.add_color_override("font_color", Color(0.0, 1.0, 0.0))
	if new_ws.who:
		$SwLabel.text = "who"
		$SwLabel.visible = true
		$SwLabel.add_color_override("font_color", Color(0.0, 0.0, 1.0))