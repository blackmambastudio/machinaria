extends Node

export (AudioStream) var Mx

export (float) var Volume = 0

export (float) var Pitch = 0

export (bool) var AutoPlay = false

export (String) var Bus = "Master"

func _ready():
	Pitch = Pitch/24
	if (AutoPlay == true):
		playmusic()
	
	print (Pitch)
	pass

func playmusic():
	$AudioDevice.stream = Mx
	$AudioDevice.set_bus(Bus)
	$AudioDevice.set_volume_db(Volume)
	$AudioDevice.set_pitch_scale(Pitch+1)
	$AudioDevice.play()
	
func stopmusic():
	$AudioDevice.stop()





#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
