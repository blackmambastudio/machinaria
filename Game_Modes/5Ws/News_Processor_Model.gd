"""
┏━ 5Ws ━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┣━━━━ News Processor Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""

extends "res://Game_Modes/Base/News_Processor_Model.gd"

# --------------------------------------------------------------- define signals
signal Update_Emotion

# ------------------------------------------------------------- define variables
var offset_x = 0

# ------------------------------------------------------------- define functions
func _ready():
	data_slots = [0, 0, 0, 0]
	reset_total()

func reset_total():
	data_result = 0

func update_material(index, data):
	if data and data.has("value"):
		var current_news = get_node("/root/Game_Mode").get_news_provider().current_news
		data_slots[index] = data.value
		match index:
			0:
				# TODO: put a rule here based on the properties of the material so the
				# sum gave by the slot's index changes for each one
				if current_news.ws == data.ws:
					data_slots[index] += 2
				data_slots[index] += 5
			1:
				data_slots[index] += 3
			2:
				data_slots[index] += 2
			3:
				data_slots[index] += 1
	else:
		data_slots[index] = 0
	reset_total()
	compute_data()
	update()
	emit_signal("Update_Emotion", data_result)

func compute_data():
	for data in data_slots:
		if data:
			data_result += data

func draw():
	pass