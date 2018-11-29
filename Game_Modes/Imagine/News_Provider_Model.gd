# imageine/news_provider_model
extends "res://Game_Modes/Base/News_Provider_model.gd"

var labels = {
	"mg_reporter": "reportero",
	"mp_borderClosed": "frontera cerrada",
	"mp_childrenPoor": "niños pobres",
	"mp_childrenWar": "niños y militares",
	"mp_countryDictatorship": "país dictadura",
	"mp_countryOppressive": "país opresor",
	"mp_countryWar": "país guerra",
	"mp_destroyedBuildings": "edificios destruidos",
	"mp_electionDay": "jornada electoral",
	"mp_factoryAbandoned": "fábrica abandonada",
	"mp_factoryOld": "fábrica vieja",
	"mp_familyHappy": "familia feliz",
	"mp_familyHunger": "familias con hambre",
	"mp_familyPoor": "familia pobre",
	"mp_helicopterSupply": "helicóptero con carga (provisiones)",
	"mp_motherCrying": "madre llorando",
	"mp_peopleCafe": "personas en cafetería",
	"mp_peopleComputer": "persona usando computador",
	"mp_peopleErect": "personas construyendo casa",
	"mp_peopleHappy": "personas felices",
	"mp_peopleHelping": "personas entregando alimentos",
	"mp_peopleMigrating": "personas emigrando",
	"mp_peopleProtest": "personas protestando",
	"mp_peopleRescuing": "personas sacando heridos",
	"mp_peopleWorking": "personas trabajando",
	"mp_periphery": "tercer mundo",
	"mp_personInterview": "persona siendo entrevistada",
	"mp_politicianConfronted": "políticos enfrentados",
	"mp_politicianInterview": "político siendo entrevistado",
	"mp_politicianPhonecall": "político hablando por teléfono",
	"mp_politicianPossession": "posesión presidencial",
	"mp_politicianPuppet": "político títere",
	"mp_politicianShakehand": "políticos dándose la mano",
	"mp_politicianShow": "político en show TV",
	"mp_politicianSpeech": "político dando discurso",
	"mp_presidentSpeech": "presidente hablando",
	"mp_presidentUpset": "presidente enojado",
	"mp_presidentWoman": "mujer presidente",
	"mp_prostitutes": "mujeres prostituyéndose",
	"mp_redcrossCamp": "campamento cruz roja",
	"mp_streetCorpses": "cadáveres calles",
	"mp_studentsCampus": "estudiantes en campus",
	"mp_studentsLibrary": "estudiantes en biblioteca",
	"mp_suburb": "casuchas",
	"mp_topSecret": "una carpeta con el sello Clasificado",
	"mp_trafficJam": "trancones",
	"mp_whiteHouse": "la casa blanca",
	"mp_womenWorking": "mujeres trabajando",
	"mp_workersProtest": "trabajadores protestando",
	"ms_bonitasVideo": "Video musical Constelación Bonitas",
	"ms_boutiqueInterior": "interior boutique",
	"ms_capettoInterview": "entrevista a Capetto",
	"ms_deianaConcert": "Deiana Granar en concierto",
	"ms_deianaInterview": "Deiana Granar en entrevista",
	"ms_deianaVideo": "Deiana Granar en video musical",
	"ms_directorBriefing": "rueda de prensa dir. técnico",
	"ms_ecolinCelebration": "celebración equipo",
	"ms_ecolinWorldcup": "entrega copa mundo",
	"ms_elegantWoman": "mujer elegante",
	"ms_fanClub": "fanáticos con carteles",
	"ms_melaosAlbum": "carátula álbum",
	"ms_melaosPlaying": "banda tocando",
	"ms_peopleConcert": "personas en concierto",
	"ms_playerEscort": "jugadores saliendo de camerinos con niños de la mano",
	"ms_playingFootball": "jugadores jugando",
	"ms_recordingStudio": "estudio grabación",
	"ms_shirtsExchange": "jugadores intercambiando camisetas",
	"ms_stadium": "vista aerea estadio",
	"ms_streetCelebration": "personas celebrando en calle",
	"ms_tennisFans": "personas en tribuna",
	"ms_tennisMatch": "partido de Tenis",
	"ms_tennisPlayer": "jugador a punto de lanzar"
};

func load_news():
	all_news = [
		# --------------------------------------------------------------------------
		# ---- DAY 1 ---------------------------------------------------------------
		# --------------------------------------------------------------------------
		# ---- Event 1
		{
			"day": 0,
			"text": "Noticia 1",
			"help": "- - - -\nCalibración requerida. Seleccione material necesario para evocar: HOPE (esperanza).",
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
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_electionDay"],
					"symbol":"E",
					"config": "01"
				}, {
					"image": "mp_peopleErect.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_peopleErect"],
					"symbol":"T",
					"config": "30"
				}, {
					"image": "mp_politicianShakehand.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianShakehand"],
					"symbol":"A",
					"config": "02"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"H",
					"config": "43"
				}, {
					"image": "mp_peopleHelping.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_peopleHelping"],
					"symbol":"P",
					"config": "20"
				}, {
					"image": "mp_politicianPhonecall.png",
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
			"text": "Noticia 2",
			"help": "- - - -\nContinuando calibración. Seleccione material necesario para evocar: FEAR (miedo).",
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
					"image": "mp_peopleHelping.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleHelping"],
					"symbol":"L",
					"config": "01"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"E",
					"config": "30"
				}, {
					"image": "mp_redcrossCamp.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_redcrossCamp"],
					"symbol":"Z",
					"config": "02"
				}, {
					"image": "mp_childrenPoor.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_childrenPoor"],
					"symbol":"F",
					"config": "43"
				}, {
					"image": "mp_destroyedBuildings.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_destroyedBuildings"],
					"symbol":"R",
					"config": "20"
				}, {
					"image": "mp_electionDay.png",
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
			"text": "Noticia 3",
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
					"image": "mg_reporter.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"L",
					"config": "01"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"N",
					"config": "30"
				}, {
					"image": "ms_peopleConcert.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"E",
					"config": "02"
				}, {
					"image": "mp_peopleCafe.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_peopleCafe"],
					"symbol":"O",
					"config": "43"
				}, {
					"image": "mp_suburb.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_suburb"],
					"symbol":"N",
					"config": "20"
				}, {
					"image": "mp_familyHappy.png",
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
			"text": "Noticia 4",
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
					"image": "mg_reporter.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"E",
					"config": "01"
				}, {
					"image": "mp_countryOppressive.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"G",
					"config": "30"
				}, {
					"image": "mp_peopleComputer.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_peopleComputer"],
					"symbol":"Z",
					"config": "02"
				}, {
					"image": "mp_politicianPuppet.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianPuppet"],
					"symbol":"R",
					"config": "43"
				}, {
					"image": "mp_peopleWorking.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"A",
					"config": "20"
				}, {
					"image": "mp_peopleHappy.png",
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
			"text": "Noticia 5",
			"help": "- - - -\nCalibración requerida para menos material. Seleccione material necesario para evocar: WOE (Aflicción)",
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
					"image": "ms_ecolinCelebration.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"O",
					"config": "01"
				}, {
					"image": "ms_ecolinWorldcup.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_ecolinWorldcup"],
					"symbol":"Y",
					"config": "30"
				}, {
					"image": "ms_playingFootball.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_playingFootball"],
					"symbol":"J",
					"config": "02"
				}, {
					"image": "mp_personInterview.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_personInterview"],
					"symbol":"W",
					"config": "43"
				}, {
					"image": "ms_directorBriefing.png",
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
			"text": "Noticia 6",
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
					"image": "ms_deianaConcert.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_deianaConcert"],
					"symbol":"J",
					"config": "01"
				}, {
					"image": "ms_deianaInterview.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_deianaInterview"],
					"symbol":"Y",
					"config": "30"
				}, {
					"image": "ms_peopleConcert.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"W",
					"config": "02"
				}, {
					"image": "mg_reporter.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"E",
					"config": "43"
				}, {
					"image": "ms_deianaVideo.png",
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
			"text": "Noticia 7",
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
					"image": "ms_bonitasVideo.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_bonitasVideo"],
					"symbol":"O",
					"config": "01"
				}, {
					"image": "ms_recordingStudio.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_recordingStudio"],
					"symbol":"Y",
					"config": "30"
				}, {
					"image": "ms_fanClub.png",
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
			"text": "Noticia 1",
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
					"image": "mp_presidentWoman.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_presidentWoman"],
					"symbol":"TH",
					"config": "14"
				}, {
					"image": "mp_electionDay.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_electionDay"],
					"symbol":"MP",
					"config": "14"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"UO",
					"config": "14"
				}, {
					"image": "mp_politicianConfronted.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianConfronted"],
					"symbol":"FL",
					"config": "14"
				}, {
					"image": "mp_whiteHouse.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"YE",
					"config": "14"
				}, {
					"image": "mp_peopleProtest.png",
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
			"text": "Noticia 2",
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
					"image": "mp_peopleComputer.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleComputer"],
					"symbol":"EE",
					"config": "14"
				}, {
					"image": "mp_peopleWorking.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"LF",
					"config": "14"
				}, {
					"image": "mp_studentsLibrary.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_studentsLibrary"],
					"symbol":"VC",
					"config": "14"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"AR",
					"config": "14"
				}, {
					"image": "mg_reporter.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mg_reporter"],
					"symbol":"OG",
					"config": "14"
				}, {
					"image": "mp_factoryAbandoned.png",
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
			"text": "Noticia 3",
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
					"image": "ms_tennisPlayer.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_tennisPlayer"],
					"symbol":"JO",
					"config": "14"
				}, {
					"image": "ms_tennisMatch.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_tennisMatch"],
					"symbol":"ON",
					"config": "14"
				}, {
					"image": "ms_tennisFans.png",
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
			"text": "Noticia 4",
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
					"image": "ms_capettoInterview.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_capettoInterview"],
					"symbol":"NJ",
					"config": "14"
				}, {
					"image": "ms_recordingStudio.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_recordingStudio"],
					"symbol":"NO",
					"config": "14"
				}, {
					"image": "ms_peopleConcert.png",
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
			"text": "Noticia 5",
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
					"image": "ms_boutiqueInterior.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_boutiqueInterior"],
					"symbol":"OW",
					"config": "14"
				}, {
					"image": "ms_elegantWoman.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_elegantWoman"],
					"symbol":"JO",
					"config": "14"
				}, {
					"image": "mp_politicianPossession.png",
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
			"text": "Noticia 1",
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
					"image": "mp_countryDictatorship.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_countryDictatorship"],
					"symbol":"AI",
					"config": "14"
				}, {
					"image": "mp_countryOppressive.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"RM",
					"config": "14"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"ZY",
					"config": "14"
				}, {
					"image": "mp_peopleProtest.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_peopleProtest"],
					"symbol":"PU",
					"config": "14"
				}, {
					"image": "mp_politicianShakehand.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_politicianShakehand"],
					"symbol":"TL",
					"config": "14"
				}, {
					"image": "mp_whiteHouse.png",
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
			"text": "Noticia 2",
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
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_countryWar"],
					"symbol":"PU",
					"config": "14"
				}, {
					"image": "mp_whiteHouse.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_whiteHouse"],
					"symbol":"IT",
					"config": "14"
				}, {
					"image": "mp_politicianInterview.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_politicianInterview"],
					"symbol":"RO",
					"config": "14"
				}, {
					"image": "mp_countryOppressive.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"HE",
					"config": "14"
				}, {
					"image": "mp_familyPoor.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_familyPoor"],
					"symbol":"VA",
					"config": "14"
				}, {
					"image": "mp_presidentWoman.png",
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
			"text": "Noticia 3",
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
					"image": "mp_peopleWorking.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_peopleWorking"],
					"symbol":"PU",
					"config": "14"
				}, {
					"image": "mp_countryOppressive.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_countryOppressive"],
					"symbol":"FR",
					"config": "14"
				}, {
					"image": "mp_womenWorking.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_womenWorking"],
					"symbol":"AO",
					"config": "14"
				}, {
					"image": "mp_familyHappy.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_familyHappy"],
					"symbol":"FE",
					"config": "14"
				}, {
					"image": "mp_periphery.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_periphery"],
					"symbol":"RE",
					"config": "14"
				}, {
					"image": "mp_factoryAbandoned.png",
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
			"text": "Noticia 3",
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
					"image": "mp_workersProtest.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["mp_workersProtest"],
					"symbol":"FE",
					"config": "14"
				}, {
					"image": "mp_familyHunger.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["mp_familyHunger"],
					"symbol":"RO",
					"config": "14"
				}, {
					"image": "mp_womenWorking.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["mp_womenWorking"],
					"symbol":"PU",
					"config": "14"
				}, {
					"image": "mp_countryWar.png",
					"emo_signal": {"amplitude": 1, "frequency": 0.5, "phase": 0},
					"label": labels["mp_countryWar"],
					"symbol":"AY",
					"config": "14"
				}, {
					"image": "mp_familyHappy.png",
					"emo_signal": {"amplitude": 0.5, "frequency": 3, "phase": 0},
					"label": labels["mp_familyHappy"],
					"symbol":"FE",
					"config": "14"
				}, {
					"image": "mp_familyPoor.png",
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
			"text": "Noticia 4",
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
					"image": "ms_streetCelebration.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_streetCelebration"],
					"symbol":"WO",
					"config": "14"
				}, {
					"image": "ms_playingFootball.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_playingFootball"],
					"symbol":"JE",
					"config": "14"
				}, {
					"image": "ms_stadium.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_stadium"],
					"symbol":"YO",
					"config": "14"
				}, {
					"image": "mg_reporter.png",
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
			"text": "Noticia 5",
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
					"image": "ms_directorBriefing.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_directorBriefing"],
					"symbol":"WF",
					"config": "14"
				}, {
					"image": "ms_ecolinWorldcup.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_ecolinWorldcup"],
					"symbol":"EO",
					"config": "14"
				}, {
					"image": "ms_shirtsExchange.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_shirtsExchange"],
					"symbol":"JX",
					"config": "14"
				}, {
					"image": "mg_reporter.png",
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
			"text": "Noticia 6",
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
					"image": "ms_melaosAlbum.png",
					"emo_signal": {"amplitude": 2, "frequency": 2, "phase": 0},
					"label": labels["ms_melaosAlbum"],
					"symbol":"EL",
					"config": "14"
				}, {
					"image": "ms_melaosPlaying.png",
					"emo_signal": {"amplitude": 1, "frequency": 1, "phase": 0},
					"label": labels["ms_melaosPlaying"],
					"symbol":"GY",
					"config": "14"
				}, {
					"image": "ms_fanClub.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_fanClub"],
					"symbol":"EN",
					"config": "14"
				}, {
					"image": "ms_peopleConcert.png",
					"emo_signal": {"amplitude": 3, "frequency": 1.5, "phase": 0},
					"label": labels["ms_peopleConcert"],
					"symbol":"VE",
					"config": "14"
				}
			]
		}
	]