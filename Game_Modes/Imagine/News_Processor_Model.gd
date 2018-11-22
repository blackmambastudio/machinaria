extends "res://Game_Modes/Base/News_Processor_Model.gd"

var offset_x = 0
var texture_to_show = load("res://Game_Modes/Imagine/Assets/Material/mp_borderClosed.png")

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
			

func select_material(index):
	.select_material(index)
	var data = data_slots[index]
	print(data)
	if data:
		texture_to_show = load("res://Game_Modes/Imagine/Assets/Material/" + str(data["image"]))
	else:
		texture_to_show = null
	print(texture_to_show, "update")
	update()

func draw():
	
	draw_texture(texture_to_show, Vector2(65, 55))
