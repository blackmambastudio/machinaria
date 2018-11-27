extends Node2D


func _ready():
	$AnimationPlayer.play("fade_in")
	yield($AnimationPlayer, "animation_finished")
	
	$IO.turn_on()
	$Editor.turn_on()