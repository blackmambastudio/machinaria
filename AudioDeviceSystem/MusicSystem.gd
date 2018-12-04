extends Node

export (bool) var AutoPlay = false

export (float) var waitTime = 0

var Mute = false

var index_track = 0
var music_to_play
var timeout = waitTime


func _ready():
	randomize()
	if (AutoPlay == true):
		index_track = randi()%get_child_count()
		music_to_play = get_child(index_track)
		playMx()
	

func playMx():
	music_to_play.stopmusic()
	music_to_play = get_child(index_track)
	music_to_play.playmusic()
	timeout = waitTime


func Mute():
	if Mute == false:
		AudioServer.set_bus_mute (1, true)
		Mute = true
	else:
		AudioServer.set_bus_mute (1, false)
		Mute = false


func nextSong():
	index_track += 1
	if index_track >= get_child_count():
		index_track = 0
	playMx()


func prevSong():
	index_track -= 1
	if index_track < 0:
		index_track = get_child_count() - 1
	playMx()


func _process(delta):
	timeout -= delta
	if timeout < 0:
		nextSong()
		timeout = waitTime

