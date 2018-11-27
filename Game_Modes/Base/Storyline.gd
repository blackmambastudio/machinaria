extends Node

var current_screen
export (int) var current_index = 0

var screens = [{
	"index": 0,
	"scene": "res://Interlude/Interlude_Composed.tscn",
	"title": "El platanal\n()Pais de la semi-periferia",
	"description": "Octubre de 1982",
	"timeout": 5
}, {
	"index": 1,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "Se acercan las elecciones presidenciales y dos candidatos compiten por el cargo:\n\nKomura Fulano (del partido Oso) e Ilosa Sutano (del partido Cuervo).",
	"timeout": 5
}, {
	"index": 2,
	"scene": "res://Interlude/Interlude_Composed.tscn",
	"title": "",
	"description": "Las relaciones con Brumas y Telmar han ido empeorando desde que Elplatanal decidió adoptar las políticas de Hunuraga, una de las 3 potencias del mundo, con el fin de convertirse en su primer aliado en la semi-periferia.",
	"timeout": 5
}, {
	"index": 3,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "La M. Corp, ubicada en Hunuraga, ha decidido que hará en Elplatanal las pruebas del segundo prototipo de su más reciente invento: M.i.M.o.\n\nUna máquina capaz de calcular intenciones de voto en tiempo real a medida que se transmite una noticia.",
	"timeout": 5
}, {
	"index": 4,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "Trabajas como directora informativa para Opticon, uno de los medios de élite de Elplatanal.",
	"timeout": 5
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
	"timeout": 14
}, {
	"index": 8,
	"scene": "res://MiMo/MiMo.tscn"
}, {
	"index": 9,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- Faltan 5 días para las elecciones -",
	"description": "El presidente de Hunaraga, Melano Thompson, ha declarado en un comunicado que sospecha de las elecciones presidenciales llevadas a cabo en Brumas hace tres meses.\n\nLos candidatos a la presidencia se pronunciaron al respecto.",
	"timeout": 14
}, {
	"index": 10,
	"scene": "res://MiMo/MiMo.tscn"
}, {
	"index": 11,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- Falta 1 día para las elecciones -",
	"description": "El presidente de Hunaraga, Melano Thompson, ha presentado pruebas que dejan en duda la legitimidad en la elección de la presidenta de Brumas: Telavia Camargo.\n\nLos candidatos a la presidencia se pronunciaron al respecto.",
	"timeout": 15
}, {
	"index": 12,
	"scene": "res://MiMo/MiMo.tscn"
}]


func _ready():
	current_screen = screens[current_index]


func next_screen():
	current_index += 1
	if current_index >= len(screens): return
	current_screen = screens[current_index]
	get_tree().change_scene(current_screen.scene)
	print("change to index scene: ", current_index)

