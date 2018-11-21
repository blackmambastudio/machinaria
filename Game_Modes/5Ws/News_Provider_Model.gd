"""
┏━ 5Ws ━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┣━━━━ News Provider Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""

# 5Ws/news_provider_model
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
					"desc": "frontera cerrada",
					"what": true,
					"where": true,
					"order": 1,
					"quality": 1
				},
				{
					"img": "mp_childrenPoor.png",
					"sound": "mp_childrenPoor.ogg",
					"desc": "niños pobres",
					"what": true,
					"who": true,
					"order": 1,
					"quality": 1
				},
				{
					"img": "mp_childrenWar.png",
					"sound": "mp_childrenWar.ogg",
					"desc": "niños guerra",
					"what": true,
					"who": true,
					"order": 1,
					"quality": 1
				},
				{
					"img": "mp_countryDictatorship.png",
					"sound": "mp_countryDictatorship.ogg",
					"desc": "país dictadura",
					"what": true,
					"order": 2,
					"quality": 1
				},
				{
					"img": "mp_countryOppressive.png",
					"sound": "mp_countryOppressive.ogg",
					"desc": "país opresor",
					"what": true,
					"order": 3,
					"quality": 1
				},
				{
					"img": "mp_countryWar.png",
					"sound": "mp_countryWar.ogg",
					"desc": "país guerra",
					"what": true,
					"order": 1,
					"quality": 1
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
					"desc": "país guerra",
					"where": true,
					"order": 1,
					"quality": 1
				},
				{
					"img": "mp_electionDay.png",
					"sound": "mp_electionDay.ogg",
					"desc": "día votaciones",
					"where": true,
					"order": 1,
					"quality": 1
				}
			]
		}
		
	]