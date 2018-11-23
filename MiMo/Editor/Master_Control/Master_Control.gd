extends GridContainer

signal Toggle_Button

func _ready():
	var index = 0
	for child in get_children():
		child.connect("button_down", self, "toggle_button", [index%3, int(index/3), child.name])
		index += 1

func toggle_button(x, y, name):
	var active = !(get_node(name).pressed)
	emit_signal("Toggle_Button", x, y, active)