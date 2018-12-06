tool
extends "res://MiMo/Editor/Preview_Section/channels/Channel.gd"

onready var Game_Mode = get_node("/root/Game_Mode")

var negative_emotions = [
	"ENVY",
	"FEAR",
	"FURY",
	"HATE",
	"PAIN",
	"PITY",
	"RAGE",
	"WOE"
]
var positive_emotions = [
	"GLEE",
	"HOPE",
	"JOY",
	"LOVE",
	"ZEAL"
]
var found_text = "[color=#EAE1F3]%s[/color]\n"

func _ready():
	._ready()
	update_display()

func unlock_emotion(emotion):
	Game_Mode.found_emotions.append(emotion)
	update_display()

func update_display():
	$Pages/Page_0/RichTextLabel.bbcode_text = "[center]"
	$Pages/Page_0/RichTextLabel.bbcode_text += "[color=#9DEFEF]NEGATIVE EMOTIONS[/color]\n"
	for n_emotion in negative_emotions:
		if Game_Mode.found_emotions.has(n_emotion):
			$Pages/Page_0/RichTextLabel.bbcode_text += found_text % n_emotion
		else:
			$Pages/Page_0/RichTextLabel.bbcode_text += n_emotion + "\n"
	$Pages/Page_0/RichTextLabel.bbcode_text += "[color=#E7D539]POSITIVE EMOTIONS[/color]\n"
	for p_emotion in positive_emotions:
		if Game_Mode.found_emotions.has(p_emotion):
			$Pages/Page_0/RichTextLabel.bbcode_text += found_text % p_emotion
		else:
			$Pages/Page_0/RichTextLabel.bbcode_text += p_emotion + "\n"
	$Pages/Page_0/RichTextLabel.bbcode_text += "[/center]"

#func _process(delta):
#	if !Game_Mode.found_emotions: return
#	$Pages/Page_0/RichTextLabel.bbcode_text = "[center]"
#	$Pages/Page_0/RichTextLabel.bbcode_text += "[color=#9DEFEF]NEGATIVE EMOTIONS[/color]\n"
#	for n_emotion in negative_emotions:
#		if Game_Mode.found_emotions.has(n_emotion):
#			$Pages/Page_0/RichTextLabel.bbcode_text += found_text % n_emotion
#		else:
#			$Pages/Page_0/RichTextLabel.bbcode_text += n_emotion + "\n"
#	$Pages/Page_0/RichTextLabel.bbcode_text += "[color=#E7D539]POSITIVE EMOTIONS[/color]\n"
#	for p_emotion in positive_emotions:
#		if Game_Mode.found_emotions.has(p_emotion):
#			$Pages/Page_0/RichTextLabel.bbcode_text += found_text % p_emotion
#		else:
#			$Pages/Page_0/RichTextLabel.bbcode_text += p_emotion + "\n"
#	$Pages/Page_0/RichTextLabel.bbcode_text += "[/center]"