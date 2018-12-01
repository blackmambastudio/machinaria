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

func _ready():
	click_to_close_active = false
	$opticon_news.visible = true
	$presenter.visible = false
	$Results_Banner.visible = false
	$Subtitles.visible = false
	var intentions = Game_Mode.Election_Simulator.intentions
	$Results_Banner/Sutano/Votes.text = str(intentions[1]) + "%"
	$Results_Banner/Fulano/Votes.text = str(intentions[2]) + "%"
	$Results_Banner/Na/Votes.text = str(intentions[0]) + "%"
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
	.close_scene()

func next_subtitle():
	var text_to_show = texts[text_index]
	$Subtitles/Text.text = text_to_show.text.replace("$", "Fulano")
	if len(text_to_show.text) < 5:
		$presenter/lips.play("silence")
	else:
		$presenter/lips.play("talking")
	
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
		
	