extends "res://Interlude/Interlude.gd"


func _ready():
	var intentions = Game_Mode.Election_Simulator.intentions
	var winner = ""
	var winner_index = 0
	if intentions[1] > intentions[2]:
		winner = "sutano"
		$Description.text = "Platanal is affronting one of the most difficult crisis in its history. Sutano has promoted a new law to expropriate foreigner companies, extend presidential time and tax people with more incomes. He broke relations with Hunuraga becoming into one of its enemies. There will be war."
	else:
		winner = "fulano"
		$Description.text = "Platanal is affronting one of the most difficult crisis in its history. Fulano broke relations with Telmar and Brumas, immigrants are being deported and Hunagara has installed military bases on the country borders. There will be war."
		winner_index = 1
	
	print("gano fulano o sutano", " ", winner)