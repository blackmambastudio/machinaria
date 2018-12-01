extends Node2D
onready var Game_Mode = get_node("/root/Game_Mode")
onready var Storyline = Game_Mode.Storyline

func _ready():
	print("-- M.i.M.o. machine ready --")
	
#	update the texts in the Info before the screen fades in
	match Game_Mode.day:
		0:
			$Info.set_time("08:11")
			$Info.set_date("Nov 21/82")
			$Info.set_label("good morning")
		1:
			$Info.set_time("12:35")
			$Info.set_date("Nov 26/82")
			$Info.set_label("good noon")
		2:
			$Info.set_time("07:08")
			$Info.set_date("Nov 30/82")
			$Info.set_label("good night")

	$AnimationPlayer.play("fade_in")
	yield($AnimationPlayer, "animation_finished")
	
	$IO.turn_on()
	$Editor.turn_on()
	
	$IO.connect("End_Day", self, "end_day")
	

func end_day():
	$Editor.turn_off()
	$AnimationPlayer.play("fade_out")
	yield($AnimationPlayer, "animation_finished")
	Storyline.next_screen()