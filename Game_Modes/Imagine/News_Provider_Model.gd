# imageine/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"

var labels = {
	"mg_reporter": "reporter",
	"mp_borderClosed": "closed border",
	"mp_childrenPoor": "poor children",
	"mp_childrenWar": "children & the military",
	"mp_countryDictatorship": "country dictatorship",
	"mp_countryOppressive": "oppressor country",
	"mp_countryWar": "country war",
	"mp_destroyedBuildings": "destroyed buildings",
	"mp_electionDay": "election day",
	"mp_factoryAbandoned": "abandoned factory",
	"mp_factoryOld": "old factory",
	"mp_familyHappy": "happy family",
	"mp_familyHunger": "hunger family",
	"mp_familyPoor": "poor family",
	"mp_helicopterSupply": "supply helicopter",
	"mp_motherCrying": "mother crying",
	"mp_peopleCafe": "people in cafe",
	"mp_peopleComputer": "people using computers",
	"mp_peopleErect": "people erecting",
	"mp_peopleHappy": "happy people",
	"mp_peopleHelping": "people helping",
	"mp_peopleMigrating": "people migrating",
	"mp_peopleProtest": "people protesting",
	"mp_peopleRescuing": "people rescuing",
	"mp_peopleWorking": "people working",
	"mp_periphery": "periphery",
	"mp_personInterview": "person in an interview",
	"mp_politicianConfronted": "confronted politicians",
	"mp_politicianInterview": "politician in an interview",
	"mp_politicianPhonecall": "politician in phonecall",
	"mp_politicianPossession": "presidential possession",
	"mp_politicianPuppet": "puppet politician",
	"mp_politicianShakehand": "politicians shaking hands",
	"mp_politicianShow": "politician at show",
	"mp_politicianSpeech": "politician speech",
	"mp_presidentSpeech": "president speech",
	"mp_presidentUpset": "upset president",
	"mp_presidentWoman": "president woman",
	"mp_prostitutes": "prostitutes",
	"mp_redcrossCamp": "redcross camp",
	"mp_streetCorpses": "street corpses",
	"mp_studentsCampus": "students campus",
	"mp_studentsLibrary": "students library",
	"mp_suburb": "suburb",
	"mp_topSecret": "top secret",
	"mp_trafficJam": "traffic jam",
	"mp_whiteHouse": "white house",
	"mp_womenWorking": "women working",
	"mp_workersProtest": "workers protest",
	"ms_bonitasVideo": "bonitas's music video",
	"ms_boutiqueInterior": "boutique interior",
	"ms_capettoInterview": "p. capetto in an interview",
	"ms_deianaConcert": "deiana in concert",
	"ms_deianaInterview": "deiana in an interview",
	"ms_deianaVideo": "deiana's music video",
	"ms_directorBriefing": "director briefing",
	"ms_ecolinCelebration": "ecolin celebration",
	"ms_ecolinWorldcup": "ecolin at the world cup",
	"ms_elegantWoman": "elegant woman",
	"ms_fanClub": "fan club",
	"ms_melaosAlbum": "melaos's album",
	"ms_melaosPlaying": "melaos playing",
	"ms_peopleConcert": "people at the concert",
	"ms_playerEscort": "player escort",
	"ms_playingFootball": "playing football",
	"ms_recordingStudio": "recording studio",
	"ms_shirtsExchange": "shirts exchange",
	"ms_stadium": "stadium",
	"ms_streetCelebration": "street celebration",
	"ms_tennisFans": "tennis fans",
	"ms_tennisMatch": "tennis match",
	"ms_tennisPlayer": "tennis player"
};
var orange = "FFCFA8"
var blue = "91CECF"
var grey = "E9C2F8"

func load_news():
	mandatory_news = [
		# --------------------------------------------------------------------------
		# ---- DAY 1 ---------------------------------------------------------------
		# --------------------------------------------------------------------------
		# ---- Event 1
		{
			"day": 0,
			"text": "The presidential candidate Komura says he will always support Telmar as long as that doesn't jeopardize our relationship with Hunaraga's government.",
			"help": "\n-Calibration operation-\nUse the material to evoke HOPE.",
			"metadata": {
				"subject": "komura",
				"type": "int. politics"
			},
			"solutions": {
				"validation": "one-column",
				"HOPE": {"emotion": "HOPE"},
				"HATE": {"emotion": "HATE"}
			},
			"cartridges_info": [
				{
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"H",
					"symbol_colors": [grey],
					"config": "43"
				}, {
					"key": "mp_peopleHelping",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_peopleHelping"],
					"symbol":"O",
					"symbol_colors": [grey],
					"config": "14"
				}, {
					"key": "mp_peopleErect",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_peopleErect"],
					"symbol":"P",
					"symbol_colors": [grey],
					"config": "20"
				}, {
					"key": "mp_electionDay",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_electionDay"],
					"symbol":"E",
					"symbol_colors": [grey],
					"config": "01"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"A",
					"symbol_colors": [grey],
					"config": "02"
				}, {
					"key": "mp_politicianShakehand",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianShakehand"],
					"symbol":"T",
					"symbol_colors": [grey],
					"config": "30"
				}
			]
		},
		# ---- Event 2
		{
			"day": 0,
			"text": "On the other hand, Ilosa, his contender, says he will support Telmar provided that the government, and the country, has the resources to do so.",
			"help": "\n-Calibration operation-\nUse the material to evoke FEAR.",
			"metadata": {
				"subject": "ilosa",
				"type": "int. politics"
			},
			"solutions": {
				"validation": "one-column",
				"FEAR": {"emotion": "FEAR"},
				"ZEAL": {"emotion": "ZEAL"}
			},
			"cartridges_info": [
				{
					"key": "mp_peopleHelping",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleHelping"],
					"symbol":"L",
					"symbol_colors": [grey],
					"config": "01"
				}, {
					"key": "mp_redcrossCamp",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_redcrossCamp"],
					"symbol":"Z",
					"symbol_colors": [grey],
					"config": "02"
				}, {
					"key": "mp_childrenPoor",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_childrenPoor"],
					"symbol":"F",
					"symbol_colors": [grey],
					"config": "43"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"E",
					"symbol_colors": [grey],
					"config": "30"
				}, {
					"key": "mp_electionDay",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_electionDay"],
					"symbol":"A",
					"symbol_colors": [grey],
					"config": "14"
				}, {
					"key": "mp_destroyedBuildings",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_destroyedBuildings"],
					"symbol":"R",
					"symbol_colors": [grey],
					"config": "20"
				}
			]
		},
		# ---- Event 3
		{
			"day": 0,
			"text": "Regarding the proposals, Ilosa talked about his backing plan for Culture and Arts.",
			"help": "\n-Calibration operation-\nUse the material to evoke ZEAL.",
			"metadata": {
				"subject": "ilosa",
				"type": "nat. politics"
			},
			"solutions": {
				"validation": "one-column",
				"ZEAL": {"emotion": "ZEAL"},
				"HATE": {"emotion": "HATE"}
			},
			"cartridges_info": [
				{
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"Z",
					"symbol_colors": [grey],
					"config": "02"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"T",
					"symbol_colors": [grey],
					"config": "30"
				}, {
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"E",
					"symbol_colors": [grey],
					"config": "01"
				}, {
					"key": "mp_suburb",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_suburb"],
					"symbol":"H",
					"symbol_colors": [grey],
					"config": "20"
				}, {
					"key": "mp_peopleCafe",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_peopleCafe"],
					"symbol":"A",
					"symbol_colors": [grey],
					"config": "43"
				}, {
					"key": "mp_familyHappy",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_familyHappy"],
					"symbol":"L",
					"symbol_colors": [grey],
					"config": "14"
				}
			]
		},
		# ---- Event 4
		{
			"day": 0,
			"text": "Meanwhile, Komura committed to back journalists and media.",
			"help": "\n-Calibration operation-\nUse the material to evoke RAGE.",
			"metadata": {
				"subject": "komura",
				"type": "nat. politics"
			},
			"solutions": {
				"validation": "one-column",
				"RAGE": {"emotion": "RAGE"},
				"ZEAL": {"emotion": "ZEAL"}
			},
			"cartridges_info": [
				{
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"E",
					"symbol_colors": [grey],
					"config": "01"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"G",
					"symbol_colors": [grey],
					"config": "30"
				}, {
					"key": "mp_peopleComputer",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_peopleComputer"],
					"symbol":"Z",
					"symbol_colors": [grey],
					"config": "02"
				}, {
					"key": "mp_politicianPuppet",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianPuppet"],
					"symbol":"R",
					"symbol_colors": [grey],
					"config": "43"
				}, {
					"key": "mp_peopleWorking",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"A",
					"symbol_colors": [grey],
					"config": "20"
				}, {
					"key": "mp_peopleHappy",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_peopleHappy"],
					"symbol":"L",
					"symbol_colors": [grey],
					"config": "14"
				}
			]
		},
		# ---- Event 5
		{
			"day": 0,
			"text": "And the party in Ecolin doesn't stop. People on streets celebrate their team's World Cup victory.",
			"help": "\n-Calibration operation-\n: use the material to evoke WOE.",
			"metadata": {
				"subject": "ecolin",
				"type": "sports"
			},
			"solutions": {
				"validation": "one-column",
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_ecolinCelebration",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"O",
					"symbol_colors": [grey],
					"config": "01"
				}, {
					"key": "ms_ecolinWorldcup",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_ecolinWorldcup"],
					"symbol":"Y",
					"symbol_colors": [grey],
					"config": "30"
				}, {
					"key": "ms_playingFootball",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_playingFootball"],
					"symbol":"J",
					"symbol_colors": [grey],
					"config": "02"
				}, {
					"key": "mp_personInterview",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_personInterview"],
					"symbol":"W",
					"symbol_colors": [grey],
					"config": "43"
				}, {
					"key": "ms_directorBriefing",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["ms_directorBriefing"],
					"symbol":"E",
					"symbol_colors": [grey],
					"config": "43"
				}
			]
		},
		# --------------------------------------------------------------------------
		# ---- DAY 2 ---------------------------------------------------------------
		# --------------------------------------------------------------------------
		# ---- Event 1
		{
			"day": 1,
			"text": "Presidential candidate Komura said that Brumas president has to answer facing the accusations made by Richard, Hunaraga's president.",
			"help": "",
			"metadata":{
				"subject": "komura",
				"type": "int. politics"
			},
			"solutions": {
				"validation": "two-column",
				"HOPE": {"emotion": "HOPE"},
				"FURY": {"emotion": "FURY"}
			},
			"cartridges_info": [
				{
					"key": "mp_presidentWoman",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_presidentWoman"],
					"symbol":"TH",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"UO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_electionDay",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_electionDay"],
					"symbol":"MP",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"YE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_politicianConfronted",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianConfronted"],
					"symbol":"FL",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_peopleProtest",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_peopleProtest"],
					"symbol":"RA",
					"symbol_colors": [blue, orange],
					"config": "14"
				}
			]
		},
		# ---- Event 2
		{
			"day": 1,
			"text": "Ilosa instead, who didn't want to talk about it, has said that during his government he will support the Web connection programs.",
			"help": "",
			"metadata":{
				"subject": "ilosa",
				"type": "int. politics"
			},
			"solutions": {
				"validation": "two-column",
				"LOVE": {"emotion": "LOVE"},
				"RAGE": {"emotion": "RAGE"}
			},
			"cartridges_info": [
				{
					"key": "mp_peopleComputer",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleComputer"],
					"symbol":"EE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_peopleWorking",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"LP",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_studentsLibrary",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_studentsLibrary"],
					"symbol":"VC",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"AR",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"OG",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_factoryAbandoned",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_factoryAbandoned"],
					"symbol":"TA",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		},
		# --------------------------------------------------------------------------
		# ---- DAY 3 ---------------------------------------------------------------
		# --------------------------------------------------------------------------
		# ---- Event 1
		{
			"day": 2,
			"text": "Komura, the presidential candidate of the Bear party, has said that he will back whatever it is Richard's resolutions about it. He emphasized: No one should put on risk democracy.",
			"help": "",
			"metadata":{
				"subject": "komura",
				"type": "int. politics"
			},
			"solutions": {
				"validation": "zig-zag",
				"ZEAL": {"emotion": "ZEAL"},
				"PITY": {"emotion": "PITY"}
			},
			"cartridges_info": [
				{
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"ZY",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_whiteHouse"],
					"symbol":"PE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_countryDictatorship",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_countryDictatorship"],
					"symbol":"AI",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_politicianShakehand",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_politicianShakehand"],
					"symbol":"TL",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_peopleProtest",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_peopleProtest"],
					"symbol":"PB",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"ZO",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		},
		# ---- Event 2
		{
			"day": 2,
			"text": "His contender Ilosa, in contrast, has another perspective. He maintains that Richard is concocting everything and that he will back Telavia Camargo, president of Brumas.",
			"help": "",
			"metadata":{
				"subject": "ilosa",
				"type": "int. politics"
			},
			"solutions": {
				"validation": "zig-zag",
				"LOVE": {"emotion": "LOVE"},
				"PAIN": {"emotion": "PAIN"}
			},
			"cartridges_info": [
				{
					"key": "mp_countryWar",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_countryWar"],
					"symbol":"PE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"VN",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"PO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"IE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_familyPoor",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_familyPoor"],
					"symbol":"VA",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_presidentWoman",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_presidentWoman"],
					"symbol":"LN",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		},
		# ---- Event 3
		{
			"day": 2,
			"text": "Komura has said that antiriot squads will exert control over protests during his government. He emphasized: Companies being affected by a few is something we won't tolerate.",
			"help": "",
			"metadata":{
				"subject": "komura",
				"type": "nat. politics"
			},
			"solutions": {
				"validation": "zig-zag",
				"FEAR": {"emotion": "FEAR"},
				"HOPE": {"emotion": "HOPE"}
			},
			"cartridges_info": [
				{
					"key": "mp_peopleWorking",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"PE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"HR",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_womenWorking",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_womenWorking"],
					"symbol":"AO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_familyHappy",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_familyHappy"],
					"symbol":"FE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_periphery",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_periphery"],
					"symbol":"FO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_factoryAbandoned",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_factoryAbandoned"],
					"symbol":"HE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		},
		# ---- Event 3
		{
			"day": 2,
			"text": "Ilosa has said that he will promote a law so that everyone who earns more than four times the minimum wage must pay an equality tax. He emphasized: Equality in life opportunities and conditions is needed if we want to progress.",
			"help": "",
			"metadata":{
				"subject": "ilosa",
				"type": "nat. politics"
			},
			"solutions": {
				"validation": "zig-zag",
				"FEAR": {"emotion": "FEAR"},
				"HOPE": {"emotion": "HOPE"}
			},
			"cartridges_info": [
				{
					"key": "mp_workersProtest",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_workersProtest"],
					"symbol":"AE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_familyHunger",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_familyHunger"],
					"symbol":"AO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_womenWorking",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_womenWorking"],
					"symbol":"PR",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_countryWar",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_countryWar"],
					"symbol":"HR",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_familyHappy",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_familyHappy"],
					"symbol":"FE",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "mp_familyPoor",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_familyPoor"],
					"symbol":"HE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		}
	]

	stuff_news = [
		{
			"day": 0,
			"text": "Federico Grucho won the peripheries tennis tournament's opening game against Hugo Morgan.",
			"help": "",
			"metadata":{
				"subject": "f. grucho",
				"type": "sports"
			},
			"solutions": {
				"validation": "two-column",
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_tennisPlayer",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_tennisPlayer"],
					"symbol":"JO",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_tennisMatch",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_tennisMatch"],
					"symbol":"OW",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_tennisFans",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_tennisFans"],
					"symbol":"YE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		},
		{
			"day": 0,
			"text": "Rock singer Peter Capetto will launch its new album Life in Villa Setner, next week.",
			"help": "",
			"metadata":{
				"subject": "p. capetto",
				"type": "entertainment"
			},
			"solutions": {
				"validation": "two-column",
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_capettoInterview",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_capettoInterview"],
					"symbol":"EY",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "ms_recordingStudio",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_recordingStudio"],
					"symbol":"WO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"OJ",
					"symbol_colors": [blue, orange],
					"config": "14"
				}
			]
		},
		{
			"day": 0,
			"text": "Our reporter accompanied Mercedes Lorca, nation's first lady, to see the garment she will be using during the next Platanal's presidential possession.",
			"help": "",
			"metadata":{
				"subject": "m. lorca",
				"type": "entertainment"
			},
			"solutions": {
				"validation": "two-column",
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_boutiqueInterior",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_boutiqueInterior"],
					"symbol":"OW",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_elegantWoman",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_elegantWoman"],
					"symbol":"JO",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "mp_politicianPossession",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianPossession"],
					"symbol":"YE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		
		},
		{
			"day": 0,
			"text": "An astonishing welcome party has been prepared to receive Platanal's soccer selection.",
			"help": "",
			"metadata":{
				"subject": "platanal",
				"type": "sports"
			},
			"solutions": {
				"validation": "two-column",
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_streetCelebration",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_streetCelebration"],
					"symbol":"WO",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "ms_playingFootball",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_playingFootball"],
					"symbol":"EJ",
					"symbol_colors": [blue, orange],
					"config": "14"
				}, {
					"key": "ms_stadium",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_stadium"],
					"symbol":"OY",
					"symbol_colors": [blue, orange],
					"config": "14"
				}
			]
		},
		{
			"day": 0,
			"text": "Ecolin's technical director, Mario Faschanni, has said that he will quit his position to focus on his family.",
			"help": "",
			"metadata":{
				"subject": "m. faschanni",
				"type": "sports"
			},
			"solutions": {
				"validation": "two-column",
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_directorBriefing",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_directorBriefing"],
					"symbol":"OW",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_ecolinWorldcup",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_ecolinWorldcup"],
					"symbol":"YO",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_shirtsExchange",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_shirtsExchange"],
					"symbol":"JE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		
		},
		{
			"day": 0,
			"text": "The rock band The Melaos has been nominated for the Grammy in the Best revelation artist category.",
			"help": "",
			"metadata":{
				"subject": "melaos",
				"type": "entertainment"
			},
			"solutions": {
				"validation": "two-column",
				"GLEE": {"emotion": "GLEE"},
				"ENVY": {"emotion": "ENVY"}
			},
			"cartridges_info": [
				{
					"key": "ms_melaosAlbum",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_melaosAlbum"],
					"symbol":"EE",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_melaosPlaying",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_melaosPlaying"],
					"symbol":"GY",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_fanClub",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_fanClub"],
					"symbol":"EN",
					"symbol_colors": [orange, blue],
					"config": "14"
				}, {
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"LV",
					"symbol_colors": [orange, blue],
					"config": "14"
				}
			]
		}
	]