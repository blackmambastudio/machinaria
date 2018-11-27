# imageine/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"


func load_news():
	all_news = [
		{
			"day": 0,
			"text": "El candidato a la presidencia Fulano, dice que apoyaría a Telmar siempre que lo necesite mientras eso no ponga en riesgo la relación con Hunaraga.",
			"help": "En esta primera prueba necesitamos hacer una calibración, por favor seleccione el material necesario para evocar HOPE.",
			"metadata": {
				"subject": "fulano"
			},
			"type": "internacional",
			"solutions": {
				"HOPE": {"emotion": "HOPE"},
				"HATE": {"emotion": "HATE"},
			},
			"cartridges_info": [
				{
					"image": "mp_borderClosed.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": "cadáveres calles",
					"symbol":"T",
					"config": "01"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": "campamento cruz roja",
					"symbol":"E",
					"config": "30"
				}, {
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": "edificios destruidos",
					"symbol":"P",
					"config": "02"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": "madre llorando",
					"symbol":"H",
					"config": "43"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": "provisiones",
					"symbol":"A",
					"config": "20"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": "personas sacando heridos",
					"symbol":"O",
					"config": "14"
				}
			]
		},
		{
			"day": 1,
			"text": "En una declaración pública Sutano dijo que apoyaría a Telmar mientras el gobierno tuviera los recursos para hacerlo.",
			"help": "Calibración, use el material necesario para inducir RAGE",
			"metadata":{
				"subject": "sutano"
			},
			"type": "internacional",
			"solutions": {
				"RAGE": {"emotion": "RAGE"},
				"ZEAL": {"emotion": "ZEAL"}
			},
			"cartridges_info": [
				{
					"image": "mp_borderClosed.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": "cadáveres calles",
					"symbol":"Z",
					"config": "14"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": "campamento cruz roja",
					"symbol":"E",
					"config": "14"
				}, {
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": "edificios destruidos",
					"symbol":"G",
					"config": "14"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": "madre llorando",
					"symbol":"A",
					"config": "14"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": "provisiones",
					"symbol":"L",
					"config": "14"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": "personas sacando heridos",
					"symbol":"R",
					"config": "14"
				}
			]
		}
		
	]