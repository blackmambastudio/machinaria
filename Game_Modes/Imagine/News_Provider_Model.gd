# experimental/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"


func set_news():
	news = [
		{
			"text": "experimental news new one",
			"cartridges_info": [
				{"emotion_a": 2, "emotion_b": 2, "emotion_c": 1, "emotion_d": 3, "image": "mp_borderClosed.png", "emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0}},
				{"emotion_a": 1, "emotion_b": 3, "emotion_c": 1, "emotion_d": 2, "image": "mp_childrenPoor.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}},
				{"emotion_a": 0, "emotion_b": 3, "emotion_c": 2, "emotion_d": 1, "image": "mp_countryDictatorship.png", "emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0}},
				{"emotion_a": 1, "emotion_b": 0, "emotion_c": 2, "emotion_d": 0, "image": "mp_countryWar.png", "emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0}},
				{"emotion_a": 2, "emotion_b": 0, "emotion_c": 3, "emotion_d": 1, "image": "mp_destroyedBuildings.png", "emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0}},
				{"emotion_a": 3, "emotion_b": 1, "emotion_c": 3, "emotion_d": 2, "image": "mp_electionDay.png", "emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15}}
			]
		},
		{
			"text": "experimental news new two",
			"cartridges_info": [
				{"emotion_a": 0, "emotion_b": 0, "emotion_c": 0, "emotion_d": 0, "image": "mp_factoryAbandoned.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}},
				{"emotion_a": 1, "emotion_b": 1, "emotion_c": 1, "emotion_d": 1, "image": "mp_factoryOld.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}},
				{"emotion_a": 2, "emotion_b": 2, "emotion_c": 2, "emotion_d": 2, "image": "mp_familyHappy.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}},
				{"emotion_a": 3, "emotion_b": 3, "emotion_c": 3, "emotion_d": 3, "image": "mp_familyPoor.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}},
				{"emotion_a": 2, "emotion_b": 2, "emotion_c": 2, "emotion_d": 2, "image": "mp_helicopterSupply.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}},
				{"emotion_a": 1, "emotion_b": 1, "emotion_c": 1, "emotion_d": 1, "image": "mp_motherCrying.png", "emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0}}
			]
		}
		
	]