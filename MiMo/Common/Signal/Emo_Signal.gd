tool
extends Node2D

signal Index_Updated

export (float) var amplitude = 1
export (float) var frequency = 1
export (float) var phase = 0

var points = PoolVector2Array([])

export (Color) var base_color = Color(1.0, 1.0, 1.0, 1.0)
export (Color) var pulse_color = Color(0, 1.0, 0, 1.0)

export (int) var width = 600
var periods = 8
onready var size = width / (periods * PI)

var liner = PoolVector2Array([])

var liner_umbral = 6
var liner_index = 0
var liner_speed = 0.5

var parts = [[0,1,0],[0,1,0],[0,1,0],[0,1,0]]
var current_segment_index = 0
var segment_locked = false
var segment_index = -1

func _ready():
	# y = a*sin(x+b) + c
	process_points()

func process_points():
	var spacing = 10.0
	points = PoolVector2Array([])
	liner = PoolVector2Array([])
	liner_index = 0
	
	var index = 0
	for part in parts:
		var section = int(2*PI*spacing)
		for x in range(section*index, section*(index+1)):
			x = x/spacing
			var y = part[0] * sin(x*part[1] + part[2])
			points.append(Vector2(x*size, y*size))
		index += 1
	


func add_segment(position, graphic_values):
	var values = [0 ,1, 0]
	if graphic_values:
		values = [graphic_values.amplitude, graphic_values.frequency, graphic_values.phase]
	parts[position] = values
	process_points()


func _process(delta):
	if len(points) == 0 or segment_locked: return
	var interval = [liner_index, liner_index + liner_umbral]
	var remove_first = true
	
	var calculated_segment_index = int(liner_index/(len(points)/4))
	if current_segment_index != calculated_segment_index:
		current_segment_index = calculated_segment_index
		emit_signal("Index_Updated", current_segment_index)

	if interval[0] >= len(points):
		liner_index = 0
		return
	if interval[1] >= len(points):
		interval[1] = len(points)-1
	liner = PoolVector2Array([])
	for i in range(interval[0], interval[1]):
		liner.append(points[i])
	
	liner_index += liner_speed
	update()


func _draw():
	draw_polyline(points, base_color, 4.0, true)
	if len(liner) > 2:
		draw_polyline(liner, pulse_color, 4.0, true)


func lock_segment(index):
	segment_locked = segment_index != index
	if !segment_locked:
		segment_index = -1
	else:
		segment_index = index


