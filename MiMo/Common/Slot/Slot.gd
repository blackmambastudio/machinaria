extends Sprite

export (PackedScene) var InsertType
export (Vector2) var InsertOffsetPosition = Vector2(0,0)
var inserted
signal On_Insert
signal On_Remove

func _ready():
	create_object()
	inserted.visible = false
	$Area2D/Collision_Area.polygon[1].x = self.texture.get_width()
	$Area2D/Collision_Area.polygon[2].x = self.texture.get_width()
	$Area2D/Collision_Area.polygon[2].y = self.texture.get_height()
	$Area2D/Collision_Area.polygon[3].y = self.texture.get_height()
	
	$Area2D.connect("area_shape_entered", self, "on_draggable_object_collides")

func create_object():
	inserted = InsertType.instance()
	inserted.position.x += InsertOffsetPosition.x
	inserted.position.y += InsertOffsetPosition.y
	add_child(inserted)

func insert_object(new_props):
	self.format_inserted_object(new_props)
	emit_signal("On_Insert", new_props)
	
func format_inserted_object(new_props):
	inserted.visible = true
	inserted.set_props(new_props)

func remove_object():
	inserted.visible = false
	inserted.set_props({})
	emit_signal("On_Remove")

func toggle_insert():
	if inserted.visible: 
		remove_object()
	else: insert_object()

func on_draggable_object_collides(id, AreaCollide, shape, shape_n):
	if shape == 1: return
	var incoming_inserted = AreaCollide.get_parent()
	incoming_inserted.next_slot_candidate = self

func is_empty():
	return !inserted.visible

func get_props():
	if is_empty(): return null
	return inserted.get_props()
