# experimental/Cartridge
extends "res://Game_Modes/Base/Cartridge_Model.gd"

var emotion_a = 0
var emotion_b = 0
var emotion_c = 0
var emotion_d = 0

var offset_x = 120

func draw():
	draw_rect(Rect2(offset_x,       10 + 60 - 20*self.emotion_a, 60, 20*self.emotion_a), ColorN("green"))
	draw_rect(Rect2(offset_x +  60, 10 + 60 - 20*self.emotion_b, 60, 20*self.emotion_b), ColorN("red"))
	draw_rect(Rect2(offset_x + 120, 10 + 60 - 20*self.emotion_c, 60, 20*self.emotion_c), ColorN("yellow"))
	draw_rect(Rect2(offset_x + 180, 10 + 60 - 20*self.emotion_d, 60, 20*self.emotion_d), ColorN("purple"))
	
func get_props():
	return {
		"emotion_a": self.emotion_a,
		"emotion_b": self.emotion_b,
		"emotion_c": self.emotion_c,
		"emotion_d": self.emotion_d
	}

func set_props(props):
	if !props.has("emotion_a") : return
	self.emotion_a = props.emotion_a
	self.emotion_b = props.emotion_b
	self.emotion_c = props.emotion_c
	self.emotion_d = props.emotion_d
	self.update()
