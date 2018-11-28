extends Node

var current_screen
export (int) var current_index = 0

var screens = [{
	"index": 0,
	"scene": "res://Interlude/Platanal.tscn",
	"title": "El platanal\n()Pais de la semi-periferia",
	"description": "Octubre de 1982",
	"timeout": 30
}, {
	"index": 1,
	"scene": "res://Interlude/Elections.tscn",
	"timeout": 30
}, {
	"index": 2,
	"scene": "res://Interlude/Continent_Politics.tscn",
	"title": "",
	"description": "Las relaciones con Brumas y Telmar han ido empeorando desde que Elplatanal decidió adoptar las políticas de Hunuraga, una de las 3 potencias del mundo, con el fin de convertirse en su primer aliado en la semi-periferia.",
	"timeout": 30
}, {
	"index": 3,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "La M. Corp, ubicada en Hunuraga, ha decidido que hará en Elplatanal las pruebas del segundo prototipo de su más reciente invento: M.i.M.o.\n\nUna máquina capaz de calcular intenciones de voto en tiempo real a medida que se transmite una noticia.",
	"timeout": 30
}, {
	"index": 4,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "Trabajas como directora informativa para Opticon, uno de los medios de élite de Elplatanal.",
	"timeout": 30
}, {
	"index": 5,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "Black Mamba",
	"description": "Presenta",
	"timeout": 5
}, {
	"index": 6,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "Machinaria",
	"description": "",
	"timeout": 5
}, {
	"index": 7,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- Faltan 10 días para las elecciones -",
	"description": "El reciente terremoto en Telmar ha dejado muchos muertos y un país en crisis. Los candidatos a la presidencia se pronunciaron al respecto.",
	"no_fade": true,
	"timeout": 14
}, {
	"index": 8,
	"scene": "res://MiMo/MiMo.tscn"
}, {
	"index": 9,
	"scene": "res://Television/Television.tscn",
	"title": "Resultados sesion 1",
	"timeout": 80
}, {
	"index": 10,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- Faltan 5 días para las elecciones -",
	"description": "El presidente de Hunaraga, Melano Thompson, ha declarado en un comunicado que sospecha de las elecciones presidenciales llevadas a cabo en Brumas hace tres meses.\n\nLos candidatos a la presidencia se pronunciaron al respecto.",
	"no_fade": true,
	"timeout": 14
}, {
	"index": 11,
	"scene": "res://MiMo/MiMo.tscn"
}, {
	"index": 12,
	"scene": "res://Television/Television.tscn",
	"title": "Resultados sesion 2",
	"timeout": 80
}, {
	"index": 13,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- Falta 1 día para las elecciones -",
	"description": "El presidente de Hunaraga, Melano Thompson, ha presentado pruebas que dejan en duda la legitimidad en la elección de la presidenta de Brumas: Telavia Camargo.\n\nLos candidatos a la presidencia se pronunciaron al respecto.",
	"no_fade": true,
	"timeout": 15
}, {
	"index": 14,
	"scene": "res://MiMo/MiMo.tscn"
}, {
	"index": 15,
	"scene": "res://Television/Television.tscn",
	"title": "Resultados final",
	"timeout": 80
}, {
	"index": 16,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "Noviembre de 1982. La M. Corp informa que el experimento ha sido casi un éxito. El nuevo presidente electo de Platanal es la prueba de ello. La máquina de pruebas fue destruida.",
	"timeout": 10
}, {
	"index": 17,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "Junio de 1983.",
	"description": "$conclusion",
	"timeout": 5
}, {
	"index": 18,
	"scene": "res://Interlude/Letter.tscn",
	"title": "",
	"description": "$last_text",
	"timeout": 10
}]


func _ready():
	current_screen = screens[current_index]


func next_screen():
	current_index += 1
	if current_index >= len(screens): return
	current_screen = screens[current_index]
	get_tree().change_scene(current_screen.scene)
	print("change to index scene: ", current_index)

