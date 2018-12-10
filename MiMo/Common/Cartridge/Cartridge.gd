extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cartridge_Model = Game_Mode.Cartridge_Class.new()
var one_char_text = "[color=#%s]%s[/color]"
var two_char_text = "[color=#%s]%s[/color] [color=#%s]%s[/color]"

func _ready():
	add_child(Cartridge_Model)

func set_props(props):
	Cartridge_Model.set_props(props)
	props = get_props()
	$Label.text = props.label
	$Symbol.text = props.symbol
	$RichSymbol.bbcode_text = "[center]"
	if props.symbol:
		if props.symbol.length() == 1:
			$RichSymbol.bbcode_text += one_char_text % [
				props.symbol_colors[0],
				props.symbol[0]
			]
		else:
			$RichSymbol.bbcode_text += two_char_text % [
				props.symbol_colors[0], props.symbol[0],
				props.symbol_colors[1], props.symbol[1]
			]
	$RichSymbol.bbcode_text += "[/center]"

func get_props():
	return Cartridge_Model.get_props()

func object_grab():
	$SFX.playsound()

func object_insert():
	$SFX.playsound()