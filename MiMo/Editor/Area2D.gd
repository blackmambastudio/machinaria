extends Area2D
var mouse_hover = false
var clicked = true
signal on_pressed
signal on_released

func _ready():
	connect("mouse_entered", self, "on_mouse_enter")
	connect("mouse_exited", self, "on_mouse_exit")


func on_mouse_enter():
	if(!Input.is_action_pressed("click")):
		mouse_hover = true


func on_mouse_exit():
	mouse_hover = false


func _process(delta):
	if !clicked and mouse_hover and Input.is_action_pressed("click"):
		clicked = true
		emit_signal("on_pressed")
		$wheel_1.rotation_degrees += 45
		if $wheel_1.rotation_degrees >= 135:
			$wheel_1.rotation_degrees = -45
	
	if clicked and !Input.is_action_pressed("click"):
		clicked = false
		emit_signal("on_released")