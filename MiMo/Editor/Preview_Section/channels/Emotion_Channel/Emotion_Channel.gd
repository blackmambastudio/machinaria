tool
extends "res://MiMo/Editor/Preview_Section/channels/Channel.gd"

onready var Game_Mode = get_node("/root/Game_Mode")

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
onready var found_emotions = Game_Mode.found_emotions

var found_text = "[color=#B8EEEF]%s[/color]\n"


func unlock_emotion(emotion):
	if emotions.has(emotion):
		found_emotions[emotions.find(emotion)] = emotion
		Game_Mode.found_emotions[emotions.find(emotion)] = emotion


func _process(delta):
	if !found_emotions: return
	$Pages/Page_0/RichTextLabel.bbcode_text = "[center]"
	for emotion in found_emotions:
		if emotion != "????":
			$Pages/Page_0/RichTextLabel.bbcode_text += found_text % emotion
		else:
			$Pages/Page_0/RichTextLabel.bbcode_text += emotion + "\n"
	$Pages/Page_0/RichTextLabel.bbcode_text += "[/center]"