"""
┏━ Meaningful Story ━━━━━━━━━━━━━┓
┣━━━━ Cartridge Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""
extends "res://Game_Modes/Base/Cartridge_Model.gd"

# --------------------------------------------------------------- define signals
signal Update_Label

# ------------------------------------------------------------- define variables
var img = null
var starting = null
var sum = null
var material_assets_path = "res://Game_Modes/Meaningful_Story/Assets/Material/%s"
var label = "%c%c%c"
var characters = [null, null, null]

# ------------------------------------------------------------- define functions
func _ready():
	light_mask = 0

# override the get_props function in Game_Modes/Base/Cartridge_Model.gd
func get_props():
	return {
		"img": self.img,
		"img_asset": material_assets_path % self.img,
		"starting": self.starting,
		"sum": self.sum,
		"characters": self.characters
	}

# override the set_props function in Game_Modes/Base/Cartridge_Model.gd
func set_props(props):
	if !props.has("img") or !props.has("starting") or !props.has("sum") : return
	self.img = props.img
	self.starting = props.starting
	self.sum = props.sum
	update_label(self.starting)
	self.update()

func update_label(first_char):
	var count = 0
	for character in characters:
		characters[count] = first_char + (sum * count)
		if characters[count] > 90:
			characters[count] = 64 + (characters[count] - 90)
		count += 1
	emit_signal("Update_Label", self.label % characters)

# override the draw function in Game_Modes/Base/Cartridge_Model.gd
func draw():
	pass