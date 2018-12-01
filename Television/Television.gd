extends "res://Interlude/Interlude.gd"

var texts = [
	{"text": "", "timeout": 4.3},
	{"text": "Good Night", "timeout": 1.2},
	{"text": "", "timeout": 0.2},
	{"text": "welcome to a new Opticon news emission. ", "timeout": 1.3},
	{"text": "", "timeout": 0.1},
	{"text": "We bring news of interest to all our viewers.", "timeout": 2.5},
	{"text": " ", "timeout": 1.6},
	{"text": "According to the last polls", "timeout": 2.3},
	{"text": "", "timeout": 0.1},
	{"text": "$ is leading the vote intention for the next elections.", "timeout": 4.1},
	{"text": " ", "timeout": 0.8},
	{"text": "Stay tuned for our next emission.", "timeout": 2.5},
	{"text": " ", "timeout": 0.4},
	{"text": "Good Night", "timeout": 1.1},
	{"text": " ", "timeout": 0.3}
]
var text_index = 0
var winner = "sutano"

func _ready():
	click_to_close_active = false
	$opticon_news.visible = true
	$presenter.visible = false
	$presenter.modulate.a = 0
	$presenter2.visible = false
	$presenter2.modulate.a = 0
	$Results_Banner.visible = false
	$Subtitles.visible = false
	
	close_animation = "fade_out_tv"
	
	var intentions = Game_Mode.Election_Simulator.intentions
	$Results_Banner/Sutano/Votes.text = str(intentions[1]) + "%"
	$Results_Banner/Fulano/Votes.text = str(intentions[2]) + "%"
	$Results_Banner/Na/Votes.text = str(intentions[0]) + "%"
	
	var winner_index = 0
	if intentions[1] > intentions[2]:
		winner = "sutano"
	else:
		winner = "fulano"
		winner_index = 1
	
	var audios_female = [
		"SFX_NewsBroadcastF_Gen_Sutano.wav",
		"SFX_NewsBroadcastF_Gen_Fulano.wav",
		"SFX_NewsBroadcastF_End_Sutano.wav",
		"SFX_NewsBroadcastF_End_Fulano.wav"
	]
	var audios_male = [
		"SFX_NewsBroadcastM_Gen_Sutano.wav",
		"SFX_NewsBroadcastM_Gen_Fulano.wav",
		"SFX_NewsBroadcastM_End_Sutano.wav",
		"SFX_NewsBroadcastM_End_Fulano.wav"
	]
	
	randomize()
	var gender = randi()%2
	
	var key = [audios_female, audios_male][gender][winner_index]
	[$presenter, $presenter2][gender].modulate.a = 1

	var sfx = load("res://AudioDeviceSystem/AudioAssets/NewsBroadcast/" + key)
	$AudioStreamPlayer.stream = sfx
	$AudioStreamPlayer.play()
	
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("scenes")
	next_subtitle()


func display_poll():
	$presenter.visible = false
	pass


func load_props(props):
	$presenter.visible = true

func close_scene():
	$presenter.visible = false
	$presenter2.visible = false
	.close_scene()

func next_subtitle():
	var text_to_show = texts[text_index]
	$Subtitles/Text.text = text_to_show.text.replace("$", winner)
	if len(text_to_show.text) < 5:
		$presenter/lips.play("silence")
		$presenter2/lips.play("silence")
	else:
		$presenter/lips.play("talking")
		$presenter2/lips.play("talking")
	
	var timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
	timer.set_wait_time(text_to_show.timeout)
	timer.start()
	add_child(timer)
	yield(timer, "timeout")
	text_index += 1
	if text_index < len(texts):
		next_subtitle()
	else:
		$Subtitles/Text.text = ""
		$Results_Banner.visible = false
		self.close_scene()
		
	