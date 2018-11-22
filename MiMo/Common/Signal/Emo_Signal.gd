tool
extends Node2D

export (float) var amplitude = 1
export (float) var frequency = 1
export (float) var phase = 0

var points = PoolVector2Array([])
var size = 100
export (Color) var base_color = Color(1.0, 1.0, 1.0, 1.0)
export (Color) var pulse_color = Color(0, 1.0, 0, 1.0)


var liner = PoolVector2Array([])

var liner_umbral = 10
var liner_index = 0
var liner_speed = 2

func _ready():
	# y = a*sin(x+b) + c
	process_points()

func process_points():
	var spacing = 10.0
	var periods = 6
	points = PoolVector2Array([])
	liner = PoolVector2Array([])
	liner_index = 0
	for x in range(0, periods*PI*spacing):
		x = x/spacing
		var y = amplitude * sin(x*frequency+phase)
		points.append(Vector2(x*size, y*size))
	
	
func _process(delta):
	
	var interval = [liner_index, liner_index + liner_umbral]
	var remove_first = true

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
	draw_polyline(points, base_color, 2.0, true)
	if len(liner) > 2:
		draw_polyline(liner, pulse_color, 4.0, true)
