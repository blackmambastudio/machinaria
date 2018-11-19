tool
extends Container

export (int) var padding_h = 15
export (int) var padding_v = 15
export (Texture) var monitor_texture
export (Texture) var monitor_display

func _ready():
	$Monitor_Sprite.texture = monitor_texture
	$Mask.texture = monitor_display
	$Monitor_Sprite.position.x = padding_h
	$Monitor_Sprite.position.y = padding_v
	
	rect_size.x = $Monitor_Sprite.texture.get_width() + padding_h * 2
	rect_size.y = $Monitor_Sprite.texture.get_height() + padding_v * 2
	
	$Mask.position.x = rect_size.x/2
	$Mask.position.y = rect_size.y/2

func turn_on():
	$Mask.visible = true

func turn_off():
	$Mask.visible = false

func display(data, time):
	$Text.text = data
	if time > 0:
		var timer = Timer.new()
		timer.set_one_shot(true)
		timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
		timer.set_wait_time(time)
		timer.start()
		add_child(timer)
		yield(timer, "timeout")
		$Text.text = "Video on"

func update_image(new_texture):
	$Video_Sprite.texture = new_texture
