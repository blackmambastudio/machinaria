extends "res://Game_Modes/Base/News_Processor_Model.gd"
var Signal_Graph = preload("res://Game_Modes/Signal/skins/graphics.gd")

var offset_x = 0
var signal_graph
func _ready():
	reset_total()
	signal_graph = Signal_Graph.new()
	signal_graph.function.A = 0
	signal_graph.position.x = 220
	signal_graph.position.y = 400
	signal_graph.size = 30
	self.add_child(signal_graph)

func reset_total():
	data_result = {
		"amplitude": 0,
		"phase": 0,
		"vertical_phase": 0
	}

func compute_data():
	var points = PoolVector2Array([])
	var total = 0
	for data in data_slots:
		if data:
			if total == 0:
				points = data.points
				total +=1
				continue
			for i in range(0, len(points)):
				points[i].y += data.points[i].y
			#data_result["amplitude"] += data["amplitude"]
			#data_result["phase"] += data["phase"]
			#data_result["vertical_phase"] += data["vertical_phase"]
	
	#signal_graph.function.A = data_result["amplitude"]
	#signal_graph.function.B = data_result["phase"]
	#signal_graph.function.C = data_result["vertical_phase"]
	#signal_graph.process_points()
	for i in range(0, len(points)):
		points[i].x *=3
		points[i].y *=3
	
	signal_graph.points = points
	print(data_result)
	