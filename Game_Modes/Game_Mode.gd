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
# maybe News_Processor_Class is another singleton
var day = 0

# instance classes
func _ready():
	Cartridge_Class = Game_Mode.Cartridge_Class
	News_Processor_Class = Game_Mode.News_Processor_Class
	Cartridge_Section_Class = Game_Mode.Cartridge_Section_Class
	Cassette_Class = Game_Mode.Cassette_Class
	News_Provider = Game_Mode.News_Provider_Class.new()
	Storyline = Game_Mode.Storyline_Class.new()
	add_child(News_Provider)
	add_child(Storyline)
	
	News_Provider.connect("End_Day", self, "end_day")


func start_game():
	News_Provider.report_news()


func get_news_provider():
	return News_Provider

func end_day():
	day += 1
	News_Provider.set_news(day)

# on cassette sent
func on_cassette_sent(data):
	Game_Mode.on_cassette_sent(data)


# expect an array of cartridge with configurations
func process_cartridges(cartridge_datas):
	Game_Mode.process_cartridges(cartridge_datas)

# Global Variables
var intro_text = """La M. Corp ha decidido usar nuestro noticiario para hacer pruebas de su nueva máquina de cálculo de intención de votos: M.i.M.o.

Su misión es hacer uso de esta para ayudar a que uno de los dos candidatos a la presidencia resulte favorecido.

Con los mandos podrá ver las instrucciones de uso y otra información que le será útil para cumplir con el objetivo de las pruebas.

El éxito de este experimento puede significar grandes beneficios para el canal; sea inteligente y tome las decisiones adecuadas.

[right]
[b]Montgomery Cruz[/b]
Director de Opticon
[/right]"""
