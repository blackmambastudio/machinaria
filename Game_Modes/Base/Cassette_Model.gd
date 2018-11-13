extends Node

var props
var recorded = false


func is_empty():
	return !!self.props

func load_data(props):
	self.props = props

func flush_data():
	self.props = null

func get_props():
	return self.props