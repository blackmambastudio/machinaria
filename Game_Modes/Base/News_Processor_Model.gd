extends Node2D

var data_slots = [null, null, null, null]
var data_result = {"default": 0}

func _ready():
	pass

func reset_total():
	data_result["default"] = 0

func compute_data():
	for data in data_slots:
		if data:
			data_result["default"] += data["default"]


func update_material(index, data):
	data_slots[index] = data
	reset_total()
	compute_data()
	update()

func _draw():
	self.draw()

func draw():
	draw_rect(Rect2(0,0,30,30), ColorN("blue"))