tool
extends Container

export (int) var padding_h = 15
export (int) var padding_v = 15
export (Texture) var monitor_texture
export (Texture) var monitor_display

signal Render_Finished

var last_text = ""
var index_large_text = 0

func _ready():
	$Monitor_Sprite.texture = monitor_texture
	$Mask.texture = monitor_display
	$Monitor_Sprite.position.x = padding_h
	$Monitor_Sprite.position.y = padding_v
	
	rect_size.x = $Monitor_Sprite.texture.get_width() + padding_h * 2
	rect_size.y = $Monitor_Sprite.texture.get_height() + padding_v * 2
	
	$Mask.position.x = rect_size.x/2
	$Mask.position.y = rect_size.y/2
	
	$Text.text = ""
	$Mini_Text.text = ""
	$Detailed_Text.text = ""
	turn_off()

func turn_on():
	for child in get_children():
		if child is Node2D:
			child.visible = true

	$Mask.visible = true
	var timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
	timer.set_wait_time(0.5)
	timer.start()
	add_child(timer)
	yield(timer, "timeout")
	self.display("Video On", 1)


func turn_off():
	$Mask.visible = false
	for child in get_children():
		if child is Node2D:
			child.visible = false
	
	$Monitor_Sprite.visible = true


func display(data, time):
	$Text.text = data
	$Mini_Text.text = ""
	last_text = data
	if time > 0:
		var timer = Timer.new()
		timer.set_one_shot(true)
		timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
		timer.set_wait_time(time)
		timer.start()
		add_child(timer)
		yield(timer, "timeout")
		if data == last_text:
			$Text.text = ""
			$Mini_Text.text = last_text
			var timer2 = Timer.new()
			timer2.set_one_shot(true)
			timer2.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
			timer2.set_wait_time(3)
			timer2.start()
			add_child(timer2)
			yield(timer2, "timeout")
			$Mini_Text.text = ""


func show_large_text(data, time):
	$Detailed_Text.bbcode_text = data
	self.index_large_text = 0
	$Detailed_Text.set_visible_characters(0)
	if time > 0:
		var timer = Timer.new()
		timer.set_one_shot(true)
		timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
		timer.set_wait_time(time)
		timer.start()
		add_child(timer)
		yield(timer, "timeout")
		emit_signal("Render_Finished")
		$Detailed_Text.bbcode_text = ""

func _process(delta):
	index_large_text += 30*delta
	if index_large_text < $Detailed_Text.get_total_character_count():
		$Detailed_Text.set_visible_characters(index_large_text)
		
