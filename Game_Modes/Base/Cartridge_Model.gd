extends Node2D

var props = {}

func set_props(props):
	self.props = props

func get_props():
	return self.props

# I call this way because godot is automatically calling the 
# parent and child method, there is no overwrite in this
# function, i guess the _whatever function can't be overriden
func _draw():
	self.draw()

func draw():
	draw_rect(Rect2(0,0,30,30), ColorN("blue"))
	#draw_string(
