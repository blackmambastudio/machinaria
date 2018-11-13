extends Node

export (Script) var Selected_Game_Mode = preload("res://Game_Modes/Base/Base_Game_Mode.gd")
onready var Game_Mode = Selected_Game_Mode.new()

#### REQUIRED CLASSES
var News_Processor_Class
var Cartridge_Class
var Cassette_Class
var Cartridge_Section_Class

# Singletons
var News_Provider
# maybe News_Processor_Class is another singleton

# instance classes
func _ready():
	Cartridge_Class = Game_Mode.Cartridge_Class
	News_Processor_Class = Game_Mode.News_Processor_Class
	Cartridge_Section_Class = Game_Mode.Cartridge_Section_Class
	Cassette_Class = Game_Mode.Cassette_Class
	News_Provider = Game_Mode.News_Provider_Class.new()
	add_child(News_Provider)
	
	# start game?
	$Timer.connect("timeout", self, "start_game")


func start_game():
	News_Provider.report_news()


func get_news_provider():
	return News_Provider


# on cassette sent
func on_cassette_sent(data):
	Game_Mode.on_cassette_sent(data)


# expect an array of cartridge with configurations
func process_cartridges(cartridge_datas):
	Game_Mode.process_cartridges(cartridge_datas)

