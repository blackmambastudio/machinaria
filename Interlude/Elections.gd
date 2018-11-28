extends "res://Interlude/Interlude.gd"

func _ready():
	closing = true
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("nothing")
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("Fade_Left")
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("nothing")
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("Fade_Right")
	closing = false

func load_props(props):
	pass
