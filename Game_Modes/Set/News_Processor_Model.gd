extends "res://Game_Modes/Base/News_Processor_Model.gd"

var offset_x = 0
var texture_to_show = load("res://Game_Modes/Imagine/Assets/Material/mp_borderClosed.png")

var set_textures = []
func _ready():
	reset_total()
	
	
func reset_total():
	data_result = {
		"shape": "",
		"fill_style": "",
		"color": ""
	}

func compute_data():
	var cartridges = []
	set_textures = []
	for data in data_slots:
		if data:
			cartridges.append(data)
			set_textures.append(data.texture)
	
	var total_coincidences = 0
	var previous_child = cartridges.pop_front()
	for next_cartridge in cartridges:
		if(previous_child.shape == next_cartridge.shape):
			total_coincidences += 1
		if(previous_child.fill_style == next_cartridge.fill_style):
			total_coincidences += 1
		if(previous_child.color == next_cartridge.color):
			total_coincidences += 1
		previous_child = next_cartridge
	
	print("total points: ", total_coincidences)
		
func draw():
	for i in range(0, len(set_textures)):
		draw_texture(set_textures[i], Vector2(200, 100 + i*50))
		pass
	pass
