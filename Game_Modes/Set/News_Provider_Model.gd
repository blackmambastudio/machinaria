# set/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"


func set_news():
	news = [
		{
			"text": "experimental news new one",
			"cartridges_info": [
				{"gen":true, "shape": "Circle", "color": "Blue", "fill_style": "Mid", "image": "mp_borderClosed.png"},
				{"gen":true, "shape": "Square", "color": "Red", "fill_style": "Full", "image": "mp_childrenPoor.png"},
				{"gen":true, "shape": "Star", "color": "Red", "fill_style": "Full", "image": "mp_countryDictatorship.png"},
				{"gen":true, "shape": "Circle", "color": "Blue", "fill_style": "Full", "image": "mp_countryWar.png"},
				{"gen":true, "shape": "Square", "color": "Green", "fill_style": "Mid", "image": "mp_destroyedBuildings.png"},
				{"gen":true, "shape": "Square", "color": "Blue", "fill_style": "Empty", "image": "mp_electionDay.png"}
			]
		},
		{
			"text": "experimental news new two",
			"cartridges_info": [
				{"gen":true, "shape": "Star", "color": "Green", "fill_style": "Empty", "image": "mp_factoryAbandoned.png"},
				{"gen":true, "shape": "Circle", "color": "Red", "fill_style": "Full", "image": "mp_factoryOld.png"},
				{"gen":true, "shape": "Square", "color": "Blue", "fill_style": "Mid", "image": "mp_familyHappy.png"},
				{"gen":true, "shape": "Star", "color": "Red", "fill_style": "Mid", "image": "mp_familyPoor.png"},
				{"gen":true, "shape": "Square", "color": "Blue", "fill_style": "Full", "image": "mp_helicopterSupply.png"},
				{"gen":true, "shape": "Circle", "color": "Red", "fill_style": "Mid", "image": "mp_motherCrying.png"}
			]
		}
		
	]