# experimental/Cartridge
extends "res://Game_Modes/Base/Cartridge_Model.gd"
var Signal_Graph = preload("res://Game_Modes/Signal/skins/graphics.gd")

var amplitude = 0
var phase = 0
var vertical_phase = 0

var offset_x = 120
var signal_graph
var points 
func _ready():
	signal_graph = Signal_Graph.new()
	amplitude = signal_graph.function.A
	phase = signal_graph.function.B
	vertical_phase = signal_graph.function.C
	signal_graph.position.x = 120
	signal_graph.position.y = 50
	signal_graph.size = 10
	self.add_child(signal_graph)
	pass
	
	
func get_props():
	return {
		"amplitude": self.amplitude,
		"phase": self.phase,
		"vertical_phase": self.vertical_phase,
		"points": self.signal_graph.points
	}

func set_props(props):
	if !props.has("amplitude") : return
	self.amplitude = props.amplitude
	self.phase = props.phase
	self.vertical_phase = props.vertical_phase
	self.points = props.points
	signal_graph.points = self.points
	self.update()
