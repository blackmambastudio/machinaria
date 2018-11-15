extends Node

export (Array) var Sounds
export (float) var Volume = 0
export (float) var minVolume = 0
export (float) var maxVolume = 0
export (String, "ooooooooooo") var ooooooooooooooooooooooo
export (float) var Pitch = 0
export (float) var minPitch = 0
export (float) var maxPitch = 0

export (float) var minOffset = 0
export (float) var MaxOffset = 0

export (String) var Bus = "Master"

func _ready():
	minPitch = minPitch/24
	maxPitch = maxPitch/24
	Pitch =  Pitch/24

func playsound():
	#Set random volume from range
	if MaxOffset != 0:
		yield(get_tree().create_timer(rand_range(minOffset, MaxOffset)),"timeout")
	var ranVol = (rand_range( minVolume, (maxVolume+1)))
	
	var ranPitch = (rand_range( minPitch + 1, (maxPitch+1)))
	
	#Select random sound from array
	var index = (randi()%len(Sounds))
	#Assign selected sound to AudioDevice
	$AudioDevice.stream = Sounds[index]
	#Play Sound
	$AudioDevice.set_volume_db(Volume + ranVol)
	$AudioDevice.set_pitch_scale((Pitch) + ranPitch)
	$AudioDevice.set_bus(Bus)
	$AudioDevice.play()

func stopsound():
	$AudioDevice.stop()

