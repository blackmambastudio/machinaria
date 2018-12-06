extends Sprite

export (Texture) var led_off
export (Texture) var led_on
export (Texture) var led_red

enum STATE {OFF, ON, RED, BLINK}

var status = STATE.OFF
var timeout = 0
var blink = false


func _ready():
	texture = led_off
	status = STATE.OFF

func turn_on():
	texture = led_on
	status = STATE.ON
	$SFX.playsound()

func turn_blink():
	status = STATE.BLINK
	texture = led_red

func turn_red():
	texture = led_red
	status = STATE.RED

func turn_off():
	texture = led_off
	status = STATE.OFF


func _process(delta):
	if status != STATE.BLINK: return
	
	timeout -= delta
	if timeout < 0:
		timeout = 0.35
		if texture == led_on:
			texture = led_red
		elif texture == led_red:
			texture = led_on