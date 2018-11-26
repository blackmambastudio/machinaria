# experimental/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"


func set_news():
	news = [
		{
			"text": "A 51000 aumentó el número de muertos dejados por el terremoto que azotó a Telmar el pasado mes de Agosto.",
			"type": "internacional",
			"cartridges_info": [
				{
					"image": "mp_borderClosed.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": "cadáveres calles",
					"symbol":"L",
					"config": "010010101"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": "campamento cruz roja",
					"symbol":"P",
					"config": "010010101"
				}, {
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": "edificios destruidos",
					"symbol":"A",
					"config": "010010101"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": "madre llorando",
					"symbol":"E",
					"config": "010010101"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": "provisiones",
					"symbol":"O",
					"config": "010010101"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": "personas sacando heridos",
					"symbol":"H",
					"config": "010010101"
				}
			]
		},
		{
			"text": "experimental news new two",
			"type": "internacional",
			"cartridges_info": [
				{
					"image": "mp_borderClosed.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": "cadáveres calles",
					"symbol":"AX"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": "campamento cruz roja",
					"symbol":"ME"
				}, {
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": "edificios destruidos",
					"symbol":"PZ"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": "madre llorando",
					"symbol":"IN"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": "provisiones",
					"symbol":"0A"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": "personas sacando heridos",
					"symbol":"OW"
				}
			]
		}
		
	]