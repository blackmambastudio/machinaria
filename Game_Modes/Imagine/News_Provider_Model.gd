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

func load_news():
	all_news = [
		# --------------------------------------------------------------------------
		# ---- DAY 1 ---------------------------------------------------------------
		# --------------------------------------------------------------------------
		# ---- Event 1
		{
			"day": 0,
			"text": "The presidential candidate Fulano says he will always support Telmar as long as that doesn't jeopardize our relationship with Hunaraga's government.",
			"help": "- - - -\nCalibration operation: use the required material to evoke HOPE.",
			"metadata": {
				"subject": "fulano"
			},
			"type": "política internacional",
			"solutions": {
				"HOPE": {"emotion": "HOPE"},
				"HATE": {"emotion": "HATE"},
			},
			"cartridges_info": [
				{
					"key": "mp_electionDay",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_electionDay"],
					"symbol":"E",
					"config": "01"
				}, {
					"key": "mp_peopleErect",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_peopleErect"],
					"symbol":"T",
					"config": "30"
				}, {
					"key": "mp_politicianShakehand",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianShakehand"],
					"symbol":"A",
					"config": "02"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"H",
					"config": "43"
				}, {
					"key": "mp_peopleHelping",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_peopleHelping"],
					"symbol":"P",
					"config": "20"
				}, {
					"key": "mp_politicianPhonecall",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_politicianPhonecall"],
					"symbol":"O",
					"config": "14"
				}
			]
		},
		# ---- Event 2
		{
			"day": 0,
			"text": "On the other hand, Sutano, his contender, says he will support Telmar provided that the government, and the country, has the resources to do so.",
			"help": "- - - -\nCalibration operation: use the required material to evoke FEAR.",
			"metadata": {
				"subject": "sutano"
			},
			"type": "política internacional",
			"solutions": {
				"FEAR": {"emotion": "FEAR"},
				"ZEAL": {"emotion": "ZEAL"},
			},
			"cartridges_info": [
				{
					"key": "mp_peopleHelping",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleHelping"],
					"symbol":"L",
					"config": "01"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"E",
					"config": "30"
				}, {
					"key": "mp_redcrossCamp",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_redcrossCamp"],
					"symbol":"Z",
					"config": "02"
				}, {
					"key": "mp_childrenPoor",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_childrenPoor"],
					"symbol":"F",
					"config": "43"
				}, {
					"key": "mp_destroyedBuildings",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_destroyedBuildings"],
					"symbol":"R",
					"config": "20"
				}, {
					"key": "mp_electionDay",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_electionDay"],
					"symbol":"A",
					"config": "14"
				}
			]
		},
		# ---- Event 3
		{
			"day": 0,
			"text": "Regarding the proposals, Sutano talked about his backing plan for Culture and Arts.",
			"help": "",
			"metadata": {
				"subject": "sutano"
			},
			"type": "política nacional",
			"solutions": {
				"LOVE": {"emotion": "LOVE"},
				"NONE": {"emotion": "NONE"},
			},
			"cartridges_info": [
				{
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"L",
					"config": "01"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"N",
					"config": "30"
				}, {
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"E",
					"config": "02"
				}, {
					"key": "mp_peopleCafe",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_peopleCafe"],
					"symbol":"O",
					"config": "43"
				}, {
					"key": "mp_suburb",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_suburb"],
					"symbol":"N",
					"config": "20"
				}, {
					"key": "mp_familyHappy",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_familyHappy"],
					"symbol":"V",
					"config": "14"
				}
			]
		},
		# ---- Event 4
		{
			"day": 0,
			"text": "Meanwhile, Fulano committed to back journalists and media.",
			"help": "",
			"metadata": {
				"subject": "fulano"
			},
			"type": "política nacional",
			"solutions": {
				"RAGE": {"emotion": "RAGE"},
				"ZEAL": {"emotion": "ZEAL"},
			},
			"cartridges_info": [
				{
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"E",
					"config": "01"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"G",
					"config": "30"
				}, {
					"key": "mp_peopleComputer",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_peopleComputer"],
					"symbol":"Z",
					"config": "02"
				}, {
					"key": "mp_politicianPuppet",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianPuppet"],
					"symbol":"R",
					"config": "43"
				}, {
					"key": "mp_peopleWorking",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"A",
					"config": "20"
				}, {
					"key": "mp_peopleHappy",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_peopleHappy"],
					"symbol":"L",
					"config": "14"
				}
			]
		},
		# ---- Event 5
		{
			"day": 0,
			"text": "And the party in Ecolin doesn't stop. People on streets celebrate their team's World Cup victory.",
			"help": "- - - -\nCalibration operation (less material): use the required material to evoke WOE.",
			"metadata": {
				"subject": ""
			},
			"type": "deportes",
			"solutions": {
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"},
			},
			"cartridges_info": [
				{
					"key": "ms_ecolinCelebration",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"O",
					"config": "01"
				}, {
					"key": "ms_ecolinWorldcup",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_ecolinWorldcup"],
					"symbol":"Y",
					"config": "30"
				}, {
					"key": "ms_playingFootball",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_playingFootball"],
					"symbol":"J",
					"config": "02"
				}, {
					"key": "mp_personInterview",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_personInterview"],
					"symbol":"W",
					"config": "43"
				}, {
					"key": "ms_directorBriefing",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["ms_directorBriefing"],
					"symbol":"E",
					"config": "43"
				}
			]
		},
		# ---- Event 6
		{
			"day": 0,
			"text": "Deiana Granar, the pop singer, has announced that her next concert will take place here, in Cortimo's stadium, in two months. Her fans still don't believe it.",
			"help": "",
			"metadata": {
				"subject": ""
			},
			"type": "entretenimiento",
			"solutions": {
				"JOY": {"emotion": "JOY"},
				"WOE": {"emotion": "WOE"},
			},
			"cartridges_info": [
				{
					"key": "ms_deianaConcert",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_deianaConcert"],
					"symbol":"J",
					"config": "01"
				}, {
					"key": "ms_deianaInterview",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_deianaInterview"],
					"symbol":"Y",
					"config": "30"
				}, {
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"W",
					"config": "02"
				}, {
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"E",
					"config": "43"
				}, {
					"key": "ms_deianaVideo",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["ms_deianaVideo"],
					"symbol":"O",
					"config": "43"
				}
			]
		},
		# ---- Event 7
		{
			"day": 0,
			"text": "The female band: Bonitas's Constellation, celebrates its third month on the first place at the world top sales ranking.",
			"help": "",
			"metadata": {
				"subject": ""
			},
			"type": "Entretenimiento",
			"solutions": {
				"JOY": {"emotion": "JOY"}
			},
			"cartridges_info": [
				{
					"key": "ms_bonitasVideo",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_bonitasVideo"],
					"symbol":"O",
					"config": "01"
				}, {
					"key": "ms_recordingStudio",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_recordingStudio"],
					"symbol":"Y",
					"config": "30"
				}, {
					"key": "ms_fanClub",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_fanClub"],
					"symbol":"J",
					"config": "02"
				}
			]
		},
		# --------------------------------------------------------------------------
		# ---- DAY 2 ---------------------------------------------------------------
		# --------------------------------------------------------------------------
		# ---- Event 1
		{
			"day": 1,
			"text": "Presidential candidate Fulano said that Brumas president has to answer facing the accusations made by Melano, Hunaraga's president.",
			"help": "",
			"metadata":{
				"subject": "fulano"
			},
			"type": "política internacional",
			"solutions": {
				"THUOMPYE": {"emotion": "HOPE"},
				"FLUORAYE": {"emotion": "FURY"}
			},
			"cartridges_info": [
				{
					"key": "mp_presidentWoman",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_presidentWoman"],
					"symbol":"TH",
					"config": "14"
				}, {
					"key": "mp_electionDay",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_electionDay"],
					"symbol":"MP",
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"UO",
					"config": "14"
				}, {
					"key": "mp_politicianConfronted",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianConfronted"],
					"symbol":"FL",
					"config": "14"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"YE",
					"config": "14"
				}, {
					"key": "mp_peopleProtest",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_peopleProtest"],
					"symbol":"RA",
					"config": "14"
				}
			]
		},
		# ---- Event 2
		{
			"day": 1,
			"text": "Sutano instead, who didn't want to talk about it, has said that during his government he will support the Web connection programs.",
			"help": "",
			"metadata":{
				"subject": "sutano"
			},
			"type": "política internacional",
			"solutions": {
				"LFOGVCEE": {"emotion": "LOVE"},
				"ARTAOGEE": {"emotion": "RAGE"},
				"LFEETAAR": {"emotion": "FEAR"}
			},
			"cartridges_info": [
				{
					"key": "mp_peopleComputer",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleComputer"],
					"symbol":"EE",
					"config": "14"
				}, {
					"key": "mp_peopleWorking",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"LF",
					"config": "14"
				}, {
					"key": "mp_studentsLibrary",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_studentsLibrary"],
					"symbol":"VC",
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"AR",
					"config": "14"
				}, {
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"OG",
					"config": "14"
				}, {
					"key": "mp_factoryAbandoned",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_factoryAbandoned"],
					"symbol":"TA",
					"config": "14"
				}
			]
		},
		# ---- Event 3
		{
			"day": 1,
			"text": "Federico Grucho won the peripheries tennis tournament's opening game against Hugo Morgan.",
			"help": "",
			"metadata":{
				"subject": ""
			},
			"type": "deportes",
			"solutions": {
				"JOONYN": {"emotion": "JOY"},
				"YNJOON": {"emotion": "NON"},
				"ONJOYN": {"emotion": "NON"}
			},
			"cartridges_info": [
				{
					"key": "ms_tennisPlayer",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_tennisPlayer"],
					"symbol":"JO",
					"config": "14"
				}, {
					"key": "ms_tennisMatch",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_tennisMatch"],
					"symbol":"ON",
					"config": "14"
				}, {
					"key": "ms_tennisFans",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_tennisFans"],
					"symbol":"YN",
					"config": "14"
				}
			]
		},
		# ---- Event 4
		{
			"day": 1,
			"text": "Rock singer Peter Capetto will launch its new album Life in Villa Setner, next week.",
			"help": "",
			"metadata":{
				"subject": ""
			},
			"type": "entretenimiento",
			"solutions": {
				"NJNOOY": {"emotion": "JOY"},
				"NOOYNJ": {"emotion": "NON"},
				"NJOYNO": {"emotion": "NON"}
			},
			"cartridges_info": [
				{
					"key": "ms_capettoInterview",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_capettoInterview"],
					"symbol":"NJ",
					"config": "14"
				}, {
					"key": "ms_recordingStudio",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_recordingStudio"],
					"symbol":"NO",
					"config": "14"
				}, {
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"OY",
					"config": "14"
				}
			]
		},
		# ---- Event 5
		{
			"day": 1,
			"text": "Our reporter accompanied Mercedes Lorca, nation's first lady, to see the garment she will be using during the next Platanal's presidential possession.",
			"help": "",
			"metadata":{
				"subject": ""
			},
			"type": "entretenimiento",
			"solutions": {
				"JOOWYE": {"emotion": "JOY"},
				"OWJOYE": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_boutiqueInterior",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_boutiqueInterior"],
					"symbol":"OW",
					"config": "14"
				}, {
					"key": "ms_elegantWoman",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_elegantWoman"],
					"symbol":"JO",
					"config": "14"
				}, {
					"key": "mp_politicianPossession",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianPossession"],
					"symbol":"YE",
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
			"text": "Fulano, the presidential candidate of the Bear party, has said that he will back whatever it is Melano's resolutions about it. He emphasized: No one should put on risk democracy.",
			"help": "",
			"metadata":{
				"subject": "fulano"
			},
			"type": "política internacional",
			"solutions": {
				"ZYFEAITL": {"emotion": "ZEAL"},
				"FEPURMZY": {"emotion": "FURY"},
				"PUAITLZY": {"emotion": "PITY"}
			},
			"cartridges_info": [
				{
					"key": "mp_countryDictatorship",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_countryDictatorship"],
					"symbol":"AI",
					"config": "14"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"RM",
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"ZY",
					"config": "14"
				}, {
					"key": "mp_peopleProtest",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_peopleProtest"],
					"symbol":"PU",
					"config": "14"
				}, {
					"key": "mp_politicianShakehand",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_politicianShakehand"],
					"symbol":"TL",
					"config": "14"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_whiteHouse"],
					"symbol":"FE",
					"config": "14"
				}
			]
		},
		# ---- Event 2
		{
			"day": 2,
			"text": "His contender Sutano, in contrast, has another perspective. He maintains that Melano is concocting everything and that he will back Telavia Camargo, president of Brumas.",
			"help": "",
			"metadata":{
				"subject": "sutano"
			},
			"type": "política internacional",
			"solutions": {
				"LNROVAHE": {"emotion": "LOVE"},
				"PUVAITLN": {"emotion": "PAIN"},
				"HEPUROIT": {"emotion": "HURT"}
			},
			"cartridges_info": [
				{
					"key": "mp_countryWar",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_countryWar"],
					"symbol":"PU",
					"config": "14"
				}, {
					"key": "mp_whiteHouse",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"IT",
					"config": "14"
				}, {
					"key": "mp_politicianInterview",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"RO",
					"config": "14"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"HE",
					"config": "14"
				}, {
					"key": "mp_familyPoor",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_familyPoor"],
					"symbol":"VA",
					"config": "14"
				}, {
					"key": "mp_presidentWoman",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_presidentWoman"],
					"symbol":"LN",
					"config": "14"
				}
			]
		},
		# ---- Event 3
		{
			"day": 2,
			"text": "Fulano has said that antiriot squads will exert control over protests during his government. He emphasized: Companies being affected by a few is something we won't tolerate.",
			"help": "",
			"metadata":{
				"subject": "fulano"
			},
			"type": "política nacional",
			"solutions": {
				"FEREAOFR": {"emotion": "FEAR"},
				"HYAOPUFE": {"emotion": "HOPE"},
				"HYAOPURE": {"emotion": "HOPE"},
				"FRPUREHY": {"emotion": "FURY"},
				"FEPUREHY": {"emotion": "FURY"}
			},
			"cartridges_info": [
				{
					"key": "mp_peopleWorking",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"PU",
					"config": "14"
				}, {
					"key": "mp_countryOppressive",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"FR",
					"config": "14"
				}, {
					"key": "mp_womenWorking",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_womenWorking"],
					"symbol":"AO",
					"config": "14"
				}, {
					"key": "mp_familyHappy",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_familyHappy"],
					"symbol":"FE",
					"config": "14"
				}, {
					"key": "mp_periphery",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_periphery"],
					"symbol":"RE",
					"config": "14"
				}, {
					"key": "mp_factoryAbandoned",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_factoryAbandoned"],
					"symbol":"HY",
					"config": "14"
				}
			]
		},
		# ---- Event 3
		{
			"day": 2,
			"text": "Sutano has said that he will promote a law so that everyone who earns more than four times the minimum wage must pay an equality tax. He emphasized: Equality in life opportunities and conditions is needed if we want to progress.",
			"help": "",
			"metadata":{
				"subject": "sutano"
			},
			"type": "política nacional",
			"solutions": {
				"FEFEAYHR": {"emotion": "FEAR"},
				"HRROPUFE": {"emotion": "HOPE"},
				"FEPUROAY": {"emotion": "FURY"}
			},
			"cartridges_info": [
				{
					"key": "mp_workersProtest",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_workersProtest"],
					"symbol":"FE",
					"config": "14"
				}, {
					"key": "mp_familyHunger",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_familyHunger"],
					"symbol":"RO",
					"config": "14"
				}, {
					"key": "mp_womenWorking",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_womenWorking"],
					"symbol":"PU",
					"config": "14"
				}, {
					"key": "mp_countryWar",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_countryWar"],
					"symbol":"AY",
					"config": "14"
				}, {
					"key": "mp_familyHappy",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_familyHappy"],
					"symbol":"FE",
					"config": "14"
				}, {
					"key": "mp_familyPoor",
					"emo_signal": {"amplitude": 1, "frequency": 1.5, "phase": 1.15},
					"label": labels["mp_familyPoor"],
					"symbol":"HR",
					"config": "14"
				}
			]
		},
		# ---- Event 4
		{
			"day": 2,
			"text": "An astonishing welcome party has been prepared to receive Platanal's soccer selection.",
			"help": "",
			"metadata":{
				"subject": ""
			},
			"type": "deportes",
			"solutions": {
				"JEWOYO": {"emotion": "JOY"},
				"WOYOEP": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_streetCelebration",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_streetCelebration"],
					"symbol":"WO",
					"config": "14"
				}, {
					"key": "ms_playingFootball",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_playingFootball"],
					"symbol":"JE",
					"config": "14"
				}, {
					"key": "ms_stadium",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_stadium"],
					"symbol":"YO",
					"config": "14"
				}, {
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"EP",
					"config": "14"
				}
			]
		},
		# ---- Event 5
		{
			"day": 2,
			"text": "Ecolin's technical director, Mario Faschanni, has said that he will quit his position to focus on his family.",
			"help": "",
			"metadata":{
				"subject": ""
			},
			"type": "deportes",
			"solutions": {
				"JXEOYO": {"emotion": "JOY"},
				"WFYOEO": {"emotion": "WOE"}
			},
			"cartridges_info": [
				{
					"key": "ms_directorBriefing",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_directorBriefing"],
					"symbol":"WF",
					"config": "14"
				}, {
					"key": "ms_ecolinWorldcup",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_ecolinWorldcup"],
					"symbol":"EO",
					"config": "14"
				}, {
					"key": "ms_shirtsExchange",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_shirtsExchange"],
					"symbol":"JX",
					"config": "14"
				}, {
					"key": "mg_reporter",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"YO",
					"config": "14"
				}
			]
		
		},
		# ---- Event 6
		{
			"day": 2,
			"text": "The rock band The Melaos has been nominated for the Grammy in the Best revelation artist category.",
			"help": "",
			"metadata":{
				"subject": ""
			},
			"type": "entretenimiento",
			"solutions": {
				"GYELENVE": {"emotion": "GLEE"},
				"ELENVEGY": {"emotion": "ENVY"}
			},
			"cartridges_info": [
				{
					"key": "ms_melaosAlbum",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_melaosAlbum"],
					"symbol":"EL",
					"config": "14"
				}, {
					"key": "ms_melaosPlaying",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_melaosPlaying"],
					"symbol":"GY",
					"config": "14"
				}, {
					"key": "ms_fanClub",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_fanClub"],
					"symbol":"EN",
					"config": "14"
				}, {
					"key": "ms_peopleConcert",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"VE",
					"config": "14"
				}
			]
		}
	]