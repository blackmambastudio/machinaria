# Meaningful_Story/Cartridge
extends "res://Game_Modes/Base/Cartridge_Model.gd"

var img = "xxx"

var offset_x = 120

func _ready():
	light_mask = 0

func get_props():
	return {
		"img": self.img
	}

func set_props(props):
	if !props.has("img") : return
	self.img = props.img
	self.update()
