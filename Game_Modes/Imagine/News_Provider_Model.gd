# experimental/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"


func set_news():
	news = [
		{
			"text": "A 51000 aumentó el número de muertos dejados por el terremoto que azotó a Telmar el pasado mes de Agosto.",
			"type": "internacional",
			"solutions": {
				"HROLPOEA": {"emotion": "HOPE"},
				"XFAEEAHR": {"emotion": "FEAR"},
			},
			"cartridges_info": [
				{
					"image": "mp_borderClosed.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": "cadáveres calles",
					"symbol":"XF",
					"config": "01"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": "campamento cruz roja",
					"symbol":"PO",
					"config": "30"
				}, {
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": "edificios destruidos",
					"symbol":"AE",
					"config": "02"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": "madre llorando",
					"symbol":"EA",
					"config": "43"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": "provisiones",
					"symbol":"OL",
					"config": "20"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": "personas sacando heridos",
					"symbol":"HR",
					"config": "14"
				}
			]
		},
		{
			"text": "experimental news new two",
			"type": "internacional",
			"solutions": {
				"HAAETLEV": {"emotion": "HATE"},
				"TLPOEVAE": {"emotion": "LOVE"},
				"TLPOEVME": {"emotion": "LOVE"}
			},
			"cartridges_info": [
				{
					"image": "mp_borderClosed.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": "cadáveres calles",
					"symbol":"AE",
					"config": "14"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": "campamento cruz roja",
					"symbol":"ME",
					"config": "14"
				}, {
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": "edificios destruidos",
					"symbol":"PO",
					"config": "14"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": "madre llorando",
					"symbol":"TL",
					"config": "14"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": "provisiones",
					"symbol":"HA",
					"config": "14"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": "personas sacando heridos",
					"symbol":"EV",
					"config": "14"
				}
			]
		}
		
	]