tool
extends Container

func _ready():
	var spacing = (rect_size.x - ($Led_01.position.x*2))/8
	#for i in range(1, 8):
	#	var led = $Led_01.duplicate()
#		led.name = "Led_0" + str(i + 1)
#		led.position.x += i*spacing
#		add_child(led)
#		led.add_to_group("leds")


func turn_on_led(index, status):
	var led = get_node("Led_0" + str(index + 1))
	match(status):
		"on": led.turn_on()
		"off": led.turn_off()
		"red": led.turn_red()
	
