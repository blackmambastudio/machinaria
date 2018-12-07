extends "res://MiMo/Editor/Preview_Section/channels/Channel.gd"

onready var Game_Mode = get_node("/root/Game_Mode")

# updates the information on the pages of the channel
func _process(delta):
	var intentions = Game_Mode.Election_Simulator.intentions
	$Pages/Page_1/Favoritism.text = str(intentions[1]) + "%"
	$Pages/Page_2/Favoritism.text = str(intentions[2]) + "%"