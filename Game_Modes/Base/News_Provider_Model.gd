extends Node

signal Report_News

var news = []

func _ready():
	set_news()

func set_news():
	news = [
		{"text": "news one", "cartridges_info": [{},{},{},{},{},{}]},
		{"text": "news two", "cartridges_info": [{},{},{},{},{},{}]},
		{"text": "news three", "cartridges_info": [{},{},{},{},{},{}]},
		{"text": "news four", "cartridges_info": [{},{},{},{},{},{}]},
		{"text": "news five", "cartridges_info": [{},{},{},{},{},{}]},
		{"text": "news six", "cartridges_info": [{},{},{},{},{},{}]}
	]

func send_video(data):
	var timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
	timer.set_wait_time(2)
	timer.connect("timeout", self, "report_news")
	timer.start()
	add_child(timer)

# get news one
func report_news():
	var item = news.pop_front()
	if !item:
		print("end game")
		return
	
	emit_signal("Report_News", item)

