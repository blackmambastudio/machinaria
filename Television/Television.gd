extends "res://Interlude/Interlude.gd"


func _ready():
	$presenter.visible = false
	$Results_Banner.visible = false
	var intentions = Game_Mode.Election_Simulator.intentions
	$Results_Banner/Sutano/Votes.text = str(intentions[1]) + "%"
	$Results_Banner/Fulano/Votes.text = str(intentions[2]) + "%"
	$Results_Banner/Na/Votes.text = str(intentions[0]) + "%"
	yield($AnimationPlayer, "animation_finished")
	$AnimationPlayer.play("scenes")

func display_poll():
	$presenter.visible = false
	pass


func load_props(props):
	$presenter.visible = true

func close_scene():
	$presenter.visible = false
	.close_scene()