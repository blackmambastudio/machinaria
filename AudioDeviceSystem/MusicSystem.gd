extends Node

export (bool) var AutoPlay = false

export (float) var waitTime = 0

var Track = 0


func _ready():
	if (AutoPlay == true):
		radiostart()
	

func radiostart():
	if Track != 0:
		yield(get_tree().create_timer(waitTime), "timeout")
	Track = Track + 1
	if Track > 4:
		Track = 1
	playMx()
	print (Track)

func playMx():
	
	if Track == 1: 
		$Mx5.stopmusic()
		$Mx1.playmusic()
		radiostart()
	
	if Track == 2: 
		$Mx1.stopmusic()
		$Mx2.playmusic()
		radiostart()
		
	if Track == 3: 
		$Mx2.stopmusic()
		$Mx3.playmusic()
		radiostart()
	
	if Track == 4: 
		$Mx3.stopmusic()
		$Mx4.playmusic()
		radiostart()
	
	if Track == 5: 
		$Mx4.stopmusic()
		$Mx5.playmusic()
		radiostart()
	

func Mute():
	AudioServer.set_bus_mute (1, true)

