extends Node2D

onready var Game_Mode = get_node("/root/Game_Mode")
onready var News_Provider = Game_Mode.get_news_provider()
onready var Main_Monitor = get_node("/root/MiMo/Editor/Main_Monitor")
var news_index = 0
signal End_Day

func _ready():
	$Cartridge_Rack.connect("Cartridges_Moved", self, "update_rack_status")
	$Video_Slot.connect("Cassette_Sent", self, "send_video")
	News_Provider.connect("Report_News", self, "get_a_new")
	News_Provider.connect("End_Day", self, "end_day")
	

func turn_on():
	self.set_goal_leds([8,5,7][Game_Mode.day])

func get_a_new(news_article):
	if Main_Monitor:
		Main_Monitor.display("incoming cable", 4)
	
	#$Led_Bar.turn_on_led(news_index, "bad")
	$Printer.on_news_item(news_article.text + "\n" + news_article.help)
	yield($Printer, "Print_Finish")
	$Cartridge_Rack.set_cartridges_info(news_article.cartridges_info)
	$Cartridge_Rack.open_rack()


func end_day():
	$Printer.print_text("No more news to report today.")
	yield($Printer, "Print_Finish")
	var timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
	timer.set_wait_time(2)
	timer.start()
	add_child(timer)
	yield(timer, "timeout")
	emit_signal("End_Day")


func update_rack_status(empty_slots):
	$Video_Slot.all_cartridges_returned = empty_slots == 0

func send_video(data):
	if Main_Monitor: 
		Main_Monitor.display("uploading video\nplease wait", 3)
		
	$Cartridge_Rack.close_rack()
	$Video_Slot/Cassette_Slot.erase_cassette()
	$Led_Bar.turn_on_led(news_index, "on")
	
	Game_Mode.on_cassette_sent(data)
	News_Provider.send_video(data)
	news_index += 1

func set_goal_leds(total):
	for index in range(0, total):
		$Led_Bar.turn_on_led(index, "red")
	