extends Container

onready var Game_Mode = get_node("/root/Game_Mode")
export (int) var printing_speed = 200

signal Print_Finish
signal Print_Start

var printing = false
var moved = false

func _ready():
	$Paper_Slice.printing_speed = printing_speed
	$Text_Area/Printed_Text.printing_speed = printing_speed
	
	var slice_height = $Paper_Slice.texture.get_height()
	var paper_height = $Paper_Dispenser_Bottom.offset.y - $Paper_Dispenser_Top.offset.y
	var interval = int(paper_height/slice_height)
	var bottom_y = interval*slice_height
	
	$Text_Area/Printed_Text.text += "\n===============\n" + Game_Mode.get_date() + \
		"\n===============\n"+ Game_Mode.get_emission()+"\n.\n"
	
	$Paper_Slice.add_to_group("slices")
	$Paper_Slice.bottom_y = bottom_y

	for i in range(1, int(interval + 1)):
		var paper_slice = $Paper_Slice.duplicate()
		paper_slice.initialize_y(slice_height*i)
		paper_slice.bottom_y = bottom_y
		add_child(paper_slice)
		move_child(paper_slice, 3)
		paper_slice.add_to_group("slices")
		paper_slice.z_index = 0


func _process(delta):
	if $Text_Area/Printed_Text.rect_size.y + $Text_Area/Printed_Text.rect_position.y >= $Text_Area.rect_size.y:
		var speed = delta*(randi()%printing_speed)*0.001
		self.get_tree().call_group("slices", "slide_up", speed)
		$Text_Area/Printed_Text.slide_up(speed)
		moved = true
	elif printing and moved:
		printing = false
		emit_signal("Print_Finish")
		$SFX.stopsound()
	else:
		moved = false

func on_news_item(news_article):
	$Text_Area/Printed_Text.print_text(news_article)
	printing = true
	emit_signal("Print_Start")
	$SFX.playsound()

func print_text(text):
	$Text_Area/Printed_Text.print_text(text)
	printing = true
	emit_signal("Print_Start")
