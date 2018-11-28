extends Container

var current_channel = 0
var total_channels = 0

func _ready():
	$Previous_Button.connect("button_down", self, "on_previous")
	$Next_Button.connect("button_down", self, "on_next")
	total_channels = $Monitor/Channels.get_child_count()
	
	show_current_channel()


func on_next():
	$Monitor/Channels.get_child(current_channel).next()


func on_previous():
	$Monitor/Channels.get_child(current_channel).previous()


func change_channel():
	print("change channel")
	current_channel += 1
	if current_channel >= total_channels:
		current_channel = 0
	show_current_channel()


func show_current_channel():
	var index = 0
	for child in $Monitor/Channels.get_children():
		child.visible = index == current_channel
		index += 1
	

