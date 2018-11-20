# Set/Cartridge
extends "res://Game_Modes/Base/Cartridge_Model.gd"

var texture
var shape = "Circle"
var color = "Green"
var fill_style = "Empty"

var options = 3
var selected_option = -1
var shapes = ["Circle", "Circle", "Circle"]
var colors = ["Green", "Green", "Green"]
var fill_styles = ["Empty", "Empty", "Empty"]
var textures = []

func _ready():
	light_mask = 0
	randomize()
	for i in range(0, options):
		shapes[i] = ["Circle", "Square", "Star"][randi()%3]
		colors[i] = ["Green", "Red", "Blue"][randi()%3]
		fill_style[i] = ["Empty", "Mid", "Full"][randi()%3]
		textures.append(load("res://Game_Modes/Set/Assets/"+self.shapes[i]+"_"+self.colors[i]+"_"+self.fill_styles[i]+".png"))

#	texture = load("res://Game_Modes/Set/Assets/"+self.shape+"_"+self.color+"_"+self.fill_style+".png")

func draw():
	if self.textures:
		for i in range(0, options):
			var modulate_color = Color(0.5,0.5,0.5, 0.4)
			if selected_option==-1 or selected_option == i: 
				modulate_color = Color(1,1,1,1)
			
			draw_texture(textures[i], Vector2(100 + i*50, 25), modulate_color)
	
func get_props():
	return {
		"shapes": self.shapes,
		"colors": self.colors,
		"fill_styles": self.fill_styles,
		"textures": self.textures
	}

func set_props(props):
	print(props)
	if props.has("gen"): return
	if !props.has("shapes"): return
	self.shapes = props.shapes
	self.colors = props.colors
	self.fill_styles = props.fill_styles
	self.textures = props.textures

	self.update()
