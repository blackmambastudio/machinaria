extends Sprite

var original_pos = Vector2(0, 0)

func _ready():
	original_pos.x = position.x
	original_pos.y = position.y
	turn_off()


func turn_on():
	$Full.visible = true
	$Full/Light2D.visible = true

func turn_off():
	$Full.visible = false
	$Full/Light2D.visible = false

func temp_position(x, y):
	original_pos = position
	position.x += x
	position.y += y

func reset_position():
	position.x = original_pos.x
	position.y = original_pos.y