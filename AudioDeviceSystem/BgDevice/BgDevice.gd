extends Node

export (AudioStream) var BG
export (float) var BgVolume = 0
export (bool) var AutoPlay = false

func _ready():
	if (AutoPlay == true):
		playBG()
		startSpecs()
	

func _process(delta):
	$BG.set_volume_db(BgVolume)


func playBG():
	$BG.stream = BG
	$BG.play()
	$BG.set_volume_db(BgVolume)

	
func startSpecs():
	for spec in $Specs.get_children():
		spec.playsound()
