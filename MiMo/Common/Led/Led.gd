extends Sprite

export (Texture) var led_off
export (Texture) var led_on
export (Texture) var led_red

enum STATE {OFF, ON, RED}

var status = STATE.OFF


func _ready():
	texture = led_off
	status = STATE.OFF

func turn_on():
	texture = led_on
	status = STATE.ON
	$SFX.playsound()

func turn_red():
	texture = led_red
	status = STATE.RED

func turn_off():
	texture = led_off
	status = STATE.OFF