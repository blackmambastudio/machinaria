tool
extends Sprite

signal drag_start
signal drag_end

var mouse_hover = false
var drag = false
var mouse_last_position = Vector2(0, 0)

var next_slot_candidate
var previous_position = Vector2(0, 0)

export (Texture) var on_drag_texture
var original_texture
var props = {}

func _ready():
	$Area2D/Collision_Area.polygon[1].x = self.texture.get_width()
	$Area2D/Collision_Area.polygon[2].x = self.texture.get_width()
	$Area2D/Collision_Area.polygon[2].y = self.texture.get_height()
	$Area2D/Collision_Area.polygon[3].y = self.texture.get_height()
	$Area2D.connect("mouse_entered", self, "on_mouse_enter")
	$Area2D.connect("mouse_exited", self, "on_mouse_exit")
	original_texture = self.texture


func _process(delta):
	self.handle_drag()

func handle_drag():
	var mouse_pos = get_viewport().get_mouse_position()

	if mouse_hover && Input.is_action_pressed("click") && !drag:
		drag = true
		previous_position = position
		mouse_last_position = mouse_pos
		$Area2D/Collision_Drawing.position = mouse_pos - global_position
		z_index = 4
		on_drag_start()
		emit_signal("drag_start")
		
	if drag && !Input.is_action_pressed("click"):
		drag = false
		z_index = 0
		on_drag_end()
		emit_signal("drag_end")

	if drag:
		var mouse_mov = mouse_pos - mouse_last_position
		position += mouse_mov
		mouse_last_position = mouse_pos


func on_mouse_enter():
	if(!Input.is_action_pressed("click")):
		mouse_hover = true


func on_mouse_exit():
	mouse_hover = false


func on_drag_end():
	self.texture = original_texture
	var parent = self.get_parent()
	if next_slot_candidate \
		&& next_slot_candidate != parent \
		&& parent.InsertType == next_slot_candidate.InsertType \
		&& !next_slot_candidate.inserted.visible:
			parent.remove_object()
			next_slot_candidate.insert_object(self.get_props())
	else:
		return_to_original_position()

	position = previous_position
	next_slot_candidate = null
	object_insert()


func on_drag_start():
	self.texture = on_drag_texture
	object_grab()


func set_props(new_props):
	self.props = new_props
	update()


func get_props():
	return self.props

func return_to_original_position():
	pass