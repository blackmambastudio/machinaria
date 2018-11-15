extends Node

export (Array) var Sounds
export (float) var Volume = 0
export (float) var minVolume = 0
export (float) var maxVolume = 0
export (String, "ooooooooooo") var ooooooooooooooooooooooo
export (float) var Pitch = 0
export (float) var minPitch = 0
export (float) var maxPitch = 0
var index = -1

export (String) var Bus = "Master"

func _ready():
	minPitch = minPitch/24
	maxPitch = maxPitch/24
	Pitch =  Pitch/24

func playsound():
	#Set random volume from range
	var ranVol = (rand_range( minVolume, (maxVolume+1)))
	
	var ranPitch = (rand_range( minPitch + 1, (maxPitch+1)))
	
#Add number to index
	index = index + 1
	#maintain index within array length
	if (index == len(Sounds)):
			index = 0

	$AudioDevice.stream = Sounds[index]
	$AudioDevice.set_volume_db(Volume + ranVol)
	$AudioDevice.set_pitch_scale((Pitch) + ranPitch)
	$AudioDevice.set_bus(Bus)
	$AudioDevice.play()
	
func stopsound():
	$AudioDevice.stop()
