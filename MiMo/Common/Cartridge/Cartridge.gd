extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Model = Game_Mode.Cartridge_Class.new()

func _ready():
	add_child(Cartridge_Model)

func set_props(props):
	Cartridge_Model.set_props(props)
	props = get_props()
	$Label.text = props.label
	$Symbol.text = props.symbol

func get_props():
	return Cartridge_Model.get_props()

func object_grab():
	$SFX.playsound()

func object_insert():
	$SFX.playsound()