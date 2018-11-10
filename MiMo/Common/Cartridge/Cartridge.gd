extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

var props = {}
func _ready():
	pass

func set_props(props):
	self.props = props

func get_props():
	return props