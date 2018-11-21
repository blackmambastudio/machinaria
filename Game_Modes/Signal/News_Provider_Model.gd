# experimental/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"


func set_news():
	news = [
		{
			"text": "experimental news new one",
			"cartridges_info": [
				{"emotion_a": 2, "emotion_b": 2, "emotion_c": 1, "emotion_d": 3},
				{"emotion_a": 1, "emotion_b": 3, "emotion_c": 1, "emotion_d": 2},
				{"emotion_a": 0, "emotion_b": 3, "emotion_c": 2, "emotion_d": 1},
				{"emotion_a": 1, "emotion_b": 0, "emotion_c": 2, "emotion_d": 0},
				{"emotion_a": 2, "emotion_b": 0, "emotion_c": 3, "emotion_d": 1},
				{"emotion_a": 3, "emotion_b": 1, "emotion_c": 3, "emotion_d": 2}
			]
		},
		{
			"text": "experimental news new two",
			"cartridges_info": [
				{"emotion_a": 0, "emotion_b": 0, "emotion_c": 0, "emotion_d": 0},
				{"emotion_a": 1, "emotion_b": 1, "emotion_c": 1, "emotion_d": 1},
				{"emotion_a": 2, "emotion_b": 2, "emotion_c": 2, "emotion_d": 2},
				{"emotion_a": 3, "emotion_b": 3, "emotion_c": 3, "emotion_d": 3},
				{"emotion_a": 2, "emotion_b": 2, "emotion_c": 2, "emotion_d": 2},
				{"emotion_a": 1, "emotion_b": 1, "emotion_c": 1, "emotion_d": 1}
			]
		}
		
	]