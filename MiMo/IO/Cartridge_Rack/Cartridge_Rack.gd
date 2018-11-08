extends Container


func _ready():
	open_rack()

func open_rack():
	
	$Tween_Gate.interpolate_property($Hidden/Mouse_Lock_Area, "rect_position",
                Vector2(0, 0), Vector2(0, 600), 1.8,
                Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween_Gate.start()
	print("open rack")

func close_rack():
	$Tween_Gate.interpolate_property($Hidden/Mouse_Lock_Area, "rect_position",
                Vector2(0, 600), Vector2(0, 0), 1.8,
                Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween_Gate.start()