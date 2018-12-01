extends RichTextLabel

export (int) var printing_speed = 5
var background_y = 0

func _ready():
#	text = text.to_upper()
	bbcode_text = text.to_upper()

func slide_up(delta):
	background_y -= delta*printing_speed
	rect_position.y = float(background_y)

func print_text(new_text):
	bbcode_text = bbcode_text + "\n" + header + new_text.replace("<>\n", "") + footer
	bbcode_text = bbcode_text.to_upper()

var header = "====== NEW CABLE ======\n"
var footer = "\n====== END CABLE ======\n"

var sample_news = """<>
====== NEW CABLE ======
Martinez declara nuevo incremento en los impuestos, la subida sera de un 18% en <>
los productos de la canasta familiar.
====== END CABLE ======
""".replace("<>\n", "")
