extends Node

var current_screen
export (int) var current_index = 0
var last_bg = "default"

onready var Game_Mode = get_node("/root/Game_Mode")

var screens = [{
	"index": 0,
	"scene": "res://Interlude/Platanal.tscn",
	"title": "Platanal\n(Semi-Peripheral Country)",
	"description": "October 1982",
	"timeout": 15, 
	"bg": "default"
}, {
	"index": 1,
	"scene": "res://Interlude/Elections.tscn",
	"timeout": 20,
	"bg": "default"
}, {
	"index": 2,
	"scene": "res://Interlude/Continent_Politics.tscn",
	"title": "",
	"description": "Relationships with Brumas and Telmar have been deteriorating since Platanal decided to adopt the politics from Hunaraga, one of the three world powers, in order to become its first ally in the semi-periphery.",
	"timeout": 20,
	"bg": "default"
}, {
	"index": 3,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "The M. Corp, located in Hunaraga, has chosen Platanal for testing the second prototype of their latest invention: M.i.M.o.\n\nA machine capable of calculating vote intention in real time when the news are being broadcast.",
	"timeout": 20,
	"bg": "default"
}, {
	"index": 4,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "",
	"description": "You work as an informative director for Opticon, one of the biggest mainstream media broadcast channels in Platanal.",
	"timeout": 20,
	"bg": "default"
}, {
	"index": 5,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "Black Mamba",
	"description": "Presents",
	"timeout": 10,
	"bg": "default"
}, {
	"index": 6,
	"scene": "res://Interlude/Machinaria_Intro.tscn",
	"title": "Machinaria",
	"description": "",
	"timeout": 15,
	"bg": "default"
}, {
	"index": 7,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- 10 days until elections -",
	"description": "The recent earthquake in Telmar has left several deaths and a country in crisis. The presidential candidates have pronounced in this respect.",
	"no_fade": true,
	"timeout": 20,
	"bg": "default"
}, {
	"index": 8,
	"scene": "res://MiMo/MiMo.tscn",
	"bg": "custom"
}, {
	"index": 9,
	"scene": "res://Television/Television.tscn",
	"title": "Session 1 results",
	"timeout": 80,
	"bg": "custom"
}, {
	"index": 10,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- 5 days until elections -",
	"description": "In a statement made by Melano Thompson, Hunaraga's president, it was announced a suspicion in the Brumas presidential elections that took place three months ago.\n\nPresidential candidates have pronounced about it.",
	"no_fade": true,
	"timeout": 20,
	"bg": "default"
}, {
	"index": 11,
	"scene": "res://MiMo/MiMo.tscn",
	"bg": "custom"
}, {
	"index": 12,
	"scene": "res://Television/Television.tscn",
	"title": "Session 2 results",
	"timeout": 80,
	"bg": "custom"
}, {
	"index": 13,
	"scene": "res://Interlude/Interlude.tscn",
	"title": "- 1 day until elections -",
	"description": "Melano Thompson, Hunaraga's president, has presented evidence which called into question Telavia Camargo's legitimacy about her election as  Brumas's president.",
	"no_fade": true,
	"timeout": 20,
	"bg": "default"
}, {
	"index": 14,
	"scene": "res://MiMo/MiMo.tscn",
	"bg": "custom"
}, {
	"index": 15,
	"scene": "res://Television/Television.tscn",
	"title": "Final results",
	"timeout": 80,
	"bg": "custom"
}, {
	"index": 16,
	"scene": "res://Interlude/MiMo_Destruction.tscn",
	"title": "",
	"description": "November 1982. The M. Corp has announced that the experiment was a successful. The resulting presidential elections in Platanal are evidence of that. After the tests, they destroyed the machine.",
	"timeout": 30,
	"bg": "default"
}, {
	"index": 17,
	"scene": "res://Interlude/Conclusion.tscn",
	"title": "June 1983.",
	"description": "?",
	"timeout": 30,
	"bg": "default"
}, {
	"index": 18,
	"scene": "res://Interlude/Letter.tscn",
	"title": "",
	"description": "$last_text",
	"timeout": 60,
	"bg": "default"
}]


func _ready():
	current_screen = screens[current_index]


func next_screen():
	current_index += 1
	if current_index >= len(screens): return
	current_screen = screens[current_index]
	if current_screen.bg != last_bg:
		last_bg = current_screen.bg
		if last_bg == "default":
			Game_Mode.get_node("BG").play()
		else:
			Game_Mode.get_node("BG").stop()
			
	get_tree().change_scene(current_screen.scene)
	

