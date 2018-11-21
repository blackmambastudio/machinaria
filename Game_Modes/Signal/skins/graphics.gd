extends Node2D

var function = {"A":randi()%2+1, "B":randi()%6, "C": randi()%1}
var points = PoolVector2Array([])
var size = 100
var color = "darkolivegreen"

var liner = PoolVector2Array([])

var liner_umbral = 10
var liner_index = 0
var liner_speed = 2

func _ready():
	# y = a*sin(x+b) + c
	randomize()
	function = {"A":randi()%2+1, "B":randi()%5, "C": (1-randi()%2)*PI}
	process_points()

func process_points():
	var spacing = 10.0
	var periods = 6
	points = PoolVector2Array([])
	liner = PoolVector2Array([])
	liner_index = 0
	for x in range(-spacing, periods*PI*spacing + spacing):
		x = x/spacing
		var y = function.A * sin(x*function.B+function.C)
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
	draw_polyline(points, ColorN(color), 2.0, true)
	if len(liner) > 2:
		draw_polyline(liner, ColorN("green"), 4.0, true)

