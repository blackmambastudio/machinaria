extends Node

export (Script) var Selected_Game_Mode = preload("res://Game_Modes/Base/Base_Game_Mode.gd")
onready var Game_Mode = Selected_Game_Mode.new()

#### REQUIRED CLASSES
var News_Processor_Class
var Cartridge_Class
var Cassette_Class
var Cartridge_Section_Class
var Storyline_Class

# Singletons
var News_Provider
var Storyline
var Election_Simulator
# maybe News_Processor_Class is another singleton
var day = 1
var found_emotions = []
var negative_emotions = [
	"ENVY",
	"FEAR",
	"FURY",
	"HATE",
	"PAIN",
	"PITY",
	"RAGE",
	"WOE"
]
var positive_emotions = [
	"GLEE",
	"HOPE",
	"JOY",
	"LOVE",
	"ZEAL"
]

# instance classes
func _ready():
	Cartridge_Class = Game_Mode.Cartridge_Class
	News_Processor_Class = Game_Mode.News_Processor_Class
	Cartridge_Section_Class = Game_Mode.Cartridge_Section_Class
	Cassette_Class = Game_Mode.Cassette_Class
	News_Provider = Game_Mode.News_Provider_Class.new()
	Storyline = Game_Mode.Storyline_Class.new()
	Election_Simulator = Game_Mode.Election_Simulator_Class.new()
	add_child(News_Provider)
	add_child(Storyline)
	add_child(Election_Simulator)
	
#	asign signals listeners
	News_Provider.connect("End_Day", self, "end_day")

func start_game():
	News_Provider.set_news(day)
	News_Provider.report_news()

func get_news_provider():
	return News_Provider

func end_day():
	day += 1
	News_Provider.set_news(day)

# on cassette sent
func on_cassette_sent(data):
	Game_Mode.on_cassette_sent(data)
	Election_Simulator.process_data(data)

# expect an array of cartridge with configurations
func process_cartridges(cartridge_datas):
	Game_Mode.process_cartridges(cartridge_datas)
	
func get_date():
	return ["1982/11/21","1982/11/26","1982/11/30"][day]

func get_emission():
	return ["Morning Emission","Noon Emission","Night Emission"][day]

# Global Variables
var intro_text = """THE M. CORP HAS DECIDED TO USE OUR NEWS PROGRAM TO TEST THEIR NEW VOTING INTENTION CALCULATOR MACHINE: M.I.M.O.

YOUR MISSION IS TO USE THIS MACHINE TO MOLD VOTING INTENTIONS SO THAT ONE OF THE PRESIDENTIAL CANDIDATES RESULTS FAVORED.

USE THE CONTROLS TO READ THE OPERATION MANUAL AND OTHER INFORMATION THAT WILL BE HELPFUL FOR YOU TO ACCOMPLISH THE GOALS OF THE TESTS.

THE SUCCESS OF THIS EXPERIMENT CAN MEAN GREAT BENEFITS FOR OUR CHANNEL. BE SMART AND TAKE THE APPROPRIATE DECISIONS.

[right]
[b]MONTGOMERY CRUZ[/b]
OPTICON'S DIRECTOR
[/right]"""
