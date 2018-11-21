"""
┏━ 5Ws ━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┣━━━━ Cartridge Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""
extends "res://Game_Modes/Base/Cartridge_Model.gd"

enum State {WHAT, WHO, WHERE, WHY, WHEN, HOW}

# --------------------------------------------------------------- define signals
signal Update_Label
signal Update_Ws
signal Update_Value

# ------------------------------------------------------------- define variables
var material_assets_path = "res://Game_Modes/5Ws/Assets/Material/%s"
var img = null
var desc = ""
var ws = []
var value = 0

# ------------------------------------------------------------- define functions
func _ready():
	light_mask = 0

# override the get_props function in Game_Modes/Base/Cartridge_Model.gd
func get_props():
	return {
		"img": self.img,
		"img_asset": material_assets_path % self.img,
		"desc": self.desc,
		"value": self.value,
		"ws": self.ws
	}

# override the set_props function in Game_Modes/Base/Cartridge_Model.gd
func set_props(props):
	if !props.has("img") : return
	self.img = props.img
	self.desc = props.desc
	self.ws = props.ws
	self.value = props.value
	var ws = []
	for w_type in props.ws:
		match w_type:
			State.WHAT:
				ws.append({
					"text": "What",
					"color": Color(1.0, 0.0, 0.0)
				})
			State.WHO:
				ws.append({
					"text": "Who",
					"color": Color(0.0, 0.0, 1.0)
				})
			State.WHERE:
				ws.append({
					"text": "Where",
					"color": Color(0.0, 1.0, 0.0)
				})
	emit_signal("Update_Label", self.desc)
	emit_signal("Update_Ws", ws)
	emit_signal("Update_Value", self.value)
	self.update()

# override the draw function in Game_Modes/Base/Cartridge_Model.gd
func draw():
	pass