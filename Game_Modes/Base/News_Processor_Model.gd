extends Node2D

var data_slots = [null, null, null, null]
var data_result = {"default": 0}
var material_selected_index = -1
var solutions = {}
var metadata = {}

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

func select_material(index):
	material_selected_index = index

func _draw():
	self.draw()

func draw():
	draw_rect(Rect2(0,0,30,30), ColorN("blue"))

func load_solutions(solutions):
	self.solutions = solutions

func load_metadata(news_metadata):
	self.metadata = news_metadata
