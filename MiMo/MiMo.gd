extends Node2D
onready var Game_Mode = get_node("/root/Game_Mode")
onready var Storyline = Game_Mode.Storyline

func _ready():
	print("ready")
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