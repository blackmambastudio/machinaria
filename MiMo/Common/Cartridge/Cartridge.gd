extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Model = Game_Mode.Cartridge_Class.new()

func _ready():
	add_child(Cartridge_Model)
	$Label.text = ""
	
	# connect signals from model
	# [ note ] this signals should be in a controller
	Cartridge_Model.connect("Update_Label", self, "update_label")

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