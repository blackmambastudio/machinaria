extends Node

export (AudioStream) var BG
export (float) var BgVolume = 0
export (float) var waitTime = 3
export (int) var specWeight = 0


export (bool) var AutoPlay = false

func _ready():
	
	if (AutoPlay == true):
		playBG()
		startSpec()
	pass
	


func playBG():
	$BG.stream = BG
	$BG.play()
	$BG.set_volume_db(BgVolume)
	
func startSpec():
	var randomNumber = randi()%100
	if randomNumber <= specWeight:
		$Spec.playsound()
	SpecTimer()
	
	
func SpecTimer():
	yield(get_tree().create_timer(waitTime), "timeout")
	startSpec()


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
