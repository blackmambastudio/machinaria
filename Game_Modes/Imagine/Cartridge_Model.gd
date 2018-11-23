# imagine/Cartridge
extends "res://Game_Modes/Base/Cartridge_Model.gd"

var image = ""
var emo_signal = {"amplitude": 1, "frequency": 1, "phase": 0}
var label = ""
var symbol = ""
var config = ""

var offset_x = 120

func _ready():
	light_mask = 0


func draw():
	pass
	
func get_props():
	return {
		"emo_signal": self.emo_signal,
		"symbol": self.symbol,
		"label": self.label,
		"image": self.image,
		"config": self.config
	}

func set_props(props):
	if !props.has("symbol") : return
	self.emo_signal = props.emo_signal
	self.label = props.label
	self.symbol = props.symbol
	self.image = props.image
	self.config = props.config
	self.update()
