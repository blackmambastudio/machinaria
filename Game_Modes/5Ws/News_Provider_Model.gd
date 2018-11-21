"""
┏━ 5Ws ━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┣━━━━ News Provider Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""
extends "res://Game_Modes/Base/News_Provider_model.gd"

enum State {WHAT, WHO, WHERE, WHY, WHEN, HOW}
var current_news = null

# ------------------------------------------------------------- define functions
# override the set_news function in Game_Modes/Base/News_Provider_model.gd
func set_news():
	news = [
		# DAY 1
		{
			"text": "Fulano habla sobre situación de tensión con Brumas",
			"ws": [State.WHO, State.WHAT],
			"cartridges_info": [
				{
					"img": "mp_borderClosed.png",
					"sound": "mp_borderClosed.ogg",
					"value": 1,
					"desc": "frontera cerrada",
					"ws": [State.WHAT, State.WHERE]
				},
				{
					"img": "mp_childrenPoor.png",
					"sound": "mp_childrenPoor.ogg",
					"value": 1,
					"desc": "niños pobres",
					"ws": [State.WHO, State.WHAT]
				},
				{
					"img": "mp_childrenWar.png",
					"sound": "mp_childrenWar.ogg",
					"value": 1,
					"desc": "niños guerra",
					"ws": [State.WHO, State.WHAT]
				},
				{
					"img": "mp_countryDictatorship.png",
					"sound": "mp_countryDictatorship.ogg",
					"value": 1,
					"desc": "país dictadura",
					"ws": [State.WHAT, State.WHERE]
				},
				{
					"img": "mp_politicianPhonecall.png",
					"sound": "mp_politicianPhonecall.ogg",
					"value": 1,
					"desc": "político llamada",
					"ws": [State.WHO]
				},
				{
					"img": "mp_politicianPossession.png",
					"sound": "mp_politicianPossession.ogg",
					"value": 1,
					"desc": "poseción presidente",
					"ws": [State.WHAT, State.WHO]
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
					"value": 1,
					"desc": "país guerra",
					"where": true
				},
				{
					"img": "mp_electionDay.png",
					"sound": "mp_electionDay.ogg",
					"value": 1,
					"desc": "día votaciones",
					"where": true
				}
			]
		}
		
	]

# override the get_props function in Game_Modes/Base/News_Provider_model.gd
func report_news():
	current_news = news.pop_front()
	var item = current_news
	if !item: return
	item.text += "\n" + "Efectivo: "
	for w_type in item.ws:
		match w_type:
			State.WHAT:
				item.text += "rojo"
			State.WHO:
				item.text += "azul"
			State.WHERE:
				item.text += "verde"
		item.text += ", "
	emit_signal("Report_News", item)