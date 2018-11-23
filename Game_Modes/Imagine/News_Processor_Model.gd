# imagine/news_processor_model
extends "res://Game_Modes/Base/News_Processor_Model.gd"

var offset_x = 0
var texture_to_show
var selected_index = -1
var display_texture = false


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


func select_material(index, selected):
	.select_material(index)

	if selected:
		selected_index = index
		display_material_on_index(index)
	else:
		selected_index = -1
	update()
	


func show_material(index):
	if selected_index != -1:
		return
	if index >= len(data_slots):
		return
	
	display_material_on_index(index)
	
	update()

func display_material_on_index(index):
	var data = data_slots[index]
	if data != null:
		texture_to_show = load("res://Game_Modes/Imagine/Assets/Material/" + str(data["image"]))
		display_texture = true
	else:
		display_texture = false

func draw():
	if !display_texture:
		return
	draw_texture(texture_to_show, Vector2(65, 55))
