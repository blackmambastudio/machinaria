extends Container


func _ready():
	$Mute_Button.connect("button_up", $MusicSystem, "Mute")
	$Next_Button.connect("button_up", $MusicSystem, "nextSong")
	$Prev_Button.connect("button_up", $MusicSystem, "prevSong")
	
	pass


