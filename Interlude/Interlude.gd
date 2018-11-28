extends Container
onready var Game_Mode = get_node("/root/Game_Mode")
onready var Storyline = Game_Mode.Storyline

var closing = false
var timeout = 1

func _ready():
	$AnimationPlayer.play("fade_in")
	var props = Storyline.current_screen
	self.load_props(props)
	timeout = props.timeout


func _process(delta):
	timeout -= delta
	if Input.is_action_pressed("click") and !closing:
		close_scene()
	
	if timeout < 0:
		close_scene()


func load_props(props):
	$Title.text = props.title
	$Description.text = props.description


func close_scene():
	if closing: return
	closing = true
	$AnimationPlayer.play("fade_out")
	yield($AnimationPlayer, "animation_finished")
	Storyline.next_screen()

