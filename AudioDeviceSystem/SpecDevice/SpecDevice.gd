extends "res://AudioDeviceSystem/RandomDevice/RandomDevice.gd"

export (int) var spec_weight = 3
export (int) var wait_time = 3

var width = 2560
export (int) var min_x = 0
export (int) var max_x = 2560

func _ready():
	if min_x < 0:
		min_x = 0
	if max_x > width:
		max_x = width
	randomize()

func playsound():
	var randomNumber = randi()%100
	if randomNumber <= spec_weight:
		.playsound()
	
	yield(get_tree().create_timer(wait_time), "timeout")
	self.playsound()

	$AudioDevice.position.x = randi()%(max_x - min_x) + min_x
	print($AudioDevice.position)