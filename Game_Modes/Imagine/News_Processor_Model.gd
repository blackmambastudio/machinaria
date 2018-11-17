extends "res://Game_Modes/Base/News_Processor_Model.gd"

var offset_x = 0
var texture_to_show = load("res://Game_Modes/Imagine/Assets/Material/mp_borderClosed.png")
var texture_to_show2 = load("res://Game_Modes/Imagine/Assets/Material/mp_womenWorking.png")

func _ready():
	reset_total()
	
	
func reset_total():
	data_result = {
		"emotion_a": 0,
		"emotion_b": 0,
		"emotion_c": 0,
		"emotion_d": 0
	}

func compute_data():
	for data in data_slots:
		if data:
			data_result["emotion_a"] += data["emotion_a"]
			data_result["emotion_b"] += data["emotion_b"]
			data_result["emotion_c"] += data["emotion_c"]
			data_result["emotion_d"] += data["emotion_d"]
	texture_to_show = texture_to_show2

func draw():
	draw_rect(Rect2(offset_x,      5 + 30 - 10*data_result.emotion_a, 30, 10*data_result.emotion_a), ColorN("green"))
	draw_rect(Rect2(offset_x + 30, 5 + 30 - 10*data_result.emotion_b, 30, 10*data_result.emotion_b), ColorN("red"))
	draw_rect(Rect2(offset_x + 60, 5 + 30 - 10*data_result.emotion_c, 30, 10*data_result.emotion_c), ColorN("yellow"))
	draw_rect(Rect2(offset_x + 90, 5 + 30 - 10*data_result.emotion_d, 30, 10*data_result.emotion_d), ColorN("purple"))
	draw_texture(texture_to_show, Vector2(65, 55))