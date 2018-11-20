extends Node2D

onready var Game_Mode = get_node("/root/Game_Mode")
onready var News_Provider = Game_Mode.get_news_provider()
onready var Main_Monitor = get_node("/root/MiMo/Editor/Main_Monitor")
var news_index = 0

func _ready():
	$Cartridge_Rack.connect("Cartridges_Moved", self, "update_rack_status")
	$Video_Slot.connect("Cassette_Sent", self, "send_video")
	News_Provider.connect("Report_News", self, "get_a_new")

func get_a_new(news_article):
	if Main_Monitor:
		Main_Monitor.display("incoming cable", 4)
	
	$Led_Bar.turn_on_led(news_index, "bad")
	$Printer.on_news_item(news_article.text)
	yield($Printer, "Print_Finish")
	$Cartridge_Rack.set_cartridges_info(news_article.cartridges_info)
	$Cartridge_Rack.open_rack()


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
	