extends Sprite

export (int) var printing_speed = 5
var top_y = 0

var bottom_y = 420
var background_y = 0

func _ready():
	top_y = -texture.get_height()

func slide_up(delta):
	background_y -= delta*printing_speed
	if background_y <= top_y:
		background_y = bottom_y
	
	position.y = int(background_y)

func initialize_y(y):
	background_y = position.y + y
	position.y = int(background_y)
	