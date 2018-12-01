tool
extends "res://MiMo/Editor/Preview_Section/channels/Channel.gd"

var emotions = [
	"ENVY",
	"FEAR",
	"FURY",
	"GLEE",
	"HATE",
	"HOPE",
	"HURT",
	"JOY",
	"LOVE",
	"LUST",
	"PAIN",
	"PITY",
	"RAGE",
	"WOE",
	"ZEAL",
	"ZEST",
]
var found_emotions = []
var found_text = "[color=#B8EEEF]%s[/color]\n"

func _ready():
	._ready()
	for i in emotions.size():
		found_emotions.append("????")

func unlock_emotion(emotion):
	if emotions.has(emotion):
		found_emotions[emotions.find(emotion)] = emotion

func _process(delta):
	$Pages/Page_0/RichTextLabel.bbcode_text = "[center]"
	for emotion in found_emotions:
		if emotion != "????":
			$Pages/Page_0/RichTextLabel.bbcode_text += found_text % emotion
		else:
			$Pages/Page_0/RichTextLabel.bbcode_text += emotion + "\n"
	$Pages/Page_0/RichTextLabel.bbcode_text += "[/center]"