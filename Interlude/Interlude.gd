extends Container
onready var Game_Mode = get_node("/root/Game_Mode")
onready var Storyline = Game_Mode.Storyline

var closing = false
var timer

func _ready():
	$AnimationPlayer.play("fade_in")
	var props = Storyline.current_screen
	self.load_props(props)
	
	timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
	timer.set_wait_time(props.timeout)
	timer.start()
	add_child(timer)
	yield(timer, "timeout")
	close_scene()


func _process(delta):
	if Input.is_action_pressed("click") and !closing:
		timer.stop()
		close_scene()


func load_props(props):
	$Title.text = props.title
	$Description.text = props.description


func close_scene():
	print("asds")
	if closing: return
	closing = true
	$AnimationPlayer.play("fade_out")
	yield($AnimationPlayer, "animation_finished")
	Storyline.next_screen()

