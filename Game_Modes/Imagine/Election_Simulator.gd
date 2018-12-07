# imagine
extends "res://Game_Modes/Base/Election_Simulator.gd"

var emotion_powers = {
	"HOPE": 1,
	"HATE": -1,
	"FEAR": -1,
	"ZEAL": 1,
	"LOVE": 1.5,
	"NONE": 0,
	"RAGE": -1.5,
	"JOY": 1,
	"WOE": -1,
	"FURY": -2,
	"NON": 0,
	"PITY": 2,
	"PAIN": -2,
	"HURT": -2,
	"GLEE": 2.5,
	"ENVY": 2.5
}

func process_data(data):
	var index = 0
	if data.subject == "ilosa":
		index = 1
	elif data.subject == "komura":
		index = 2

	modify_intention(index, emotion_powers[data.solution.emotion])