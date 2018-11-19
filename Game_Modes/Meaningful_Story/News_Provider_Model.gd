# Meaningful_Story/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"

var material_assets_path = "res://Game_Modes/Meaningful_Story/Assets/Material/%s"

# overrides the same function in parent class
func set_news():
	news = [
		# DAY 1
		{
			"text": """Sutano dice que Elplatanal debe estar con cualquier país
			que apoye la conexión global, a pesar de que Hunaraga no sea uno de
			ellos y no esté de acuerdo.""",
			"cartridges_info": [
				{
					"img": load(material_assets_path % "mp_childrenPoor.png"),
					"sound": "bla/bla/bla"
				},
				{
					"img": load(material_assets_path % "mp_childrenWar.png"),
					"sound": "bla/bla/bla"
				},
				{
					"img": load(material_assets_path % "mp_countryWar.png"),
					"sound": "bla/bla/bla"
				},
				{
					"img": load(material_assets_path % "mp_electionDay.png"),
					"sound": "bla/bla/bla"
				},
				{
					"img": "bla/bla/bla",
					"sound": "bla/bla/bla"
				},
				{
					"img": "bla/bla/bla",
					"sound": "bla/bla/bla"
				}
			]
		},
		{
			"text": """Fulano dice que cree firmemente en la posición de Hunaraga
			y apoyará lo que dicho país Central decida""",
			"cartridges_info": [
				{
					"img": load(material_assets_path % "mp_countryWar.png"),
					"sound": "bla/bla/bla"
				},
				{
					"img": load(material_assets_path % "mp_electionDay.png"),
					"sound": "bla/bla/bla"
				}
			]
		}
		
	]