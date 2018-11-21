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
	data_slots = ["-", "-", "-", "-"]
	reset_total()

func reset_total():
	data_result = ""

func update_material(index, data):
	reset_total()
	compute_data()
	update()
	emit_signal("Update_Emotion", data_result)

func compute_data():
	for data in data_slots:
		if data:
			data_result += data + "\n"

func draw():
	pass