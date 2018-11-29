# imagine
extends "res://Game_Modes/Base/Election_Simulator.gd"

func process_data(data):
	print("data to process on election simulator")
	print(data)
	modify_intention(1, 2)