"""
┏━ Meaningful Story ━━━━━━━━━━━━━┓
┣━━━━ News Provider Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""

# Meaningful_Story/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"

# overrides the same function in parent class
func set_news():
	news = [
		# DAY 1
		{
			"text": "Aquí irá el texto de la noticia...",
			"cartridges_info": [
				{
					"img": "mp_borderClosed.png",
					"sound": "mp_borderClosed.ogg",
					"starting": 65,
					"sum": 1
				},
				{
					"img": "mp_childrenPoor.png",
					"sound": "mp_childrenPoor.ogg",
					"starting": 68,
					"sum": 1
				},
				{
					"img": "mp_childrenWar.png",
					"sound": "mp_childrenWar.ogg",
					"starting": 72,
					"sum": 1
				},
				{
					"img": "mp_countryDictatorship.png",
					"sound": "mp_countryDictatorship.ogg",
					"starting": 65,
					"sum": 2
				},
				{
					"img": "mp_countryOppressive.png",
					"sound": "mp_countryOppressive.ogg",
					"starting": 65,
					"sum": 3
				},
				{
					"img": "mp_countryWar.png",
					"sound": "mp_countryWar.ogg",
					"starting": 88,
					"sum": 1
				}
			]
		},
		{
			"text": """Fulano dice que cree firmemente en la posición de Hunaraga
			y apoyará lo que dicho país Central decida""",
			"cartridges_info": [
				{
					"img": "mp_countryWar.png",
					"sound": "mp_countryWar.ogg",
					"starting": 65,
					"sum": 1
				},
				{
					"img": "mp_electionDay.png",
					"sound": "mp_electionDay.ogg",
					"starting": 65,
					"sum": 1
				}
			]
		}
		
	]