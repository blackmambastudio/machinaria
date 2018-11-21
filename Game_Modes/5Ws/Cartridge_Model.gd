"""
┏━ 5Ws ━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┣━━━━ Cartridge Model
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
"""
extends "res://Game_Modes/Base/Cartridge_Model.gd"

# --------------------------------------------------------------- define signals
signal Update_Label
signal Update_Ws

# ------------------------------------------------------------- define variables
var material_assets_path = "res://Game_Modes/5Ws/Assets/Material/%s"
var img = null
var desc = ""
var ws = {
	"what": false,
	"who": false,
	"where": false
}

# ------------------------------------------------------------- define functions
func _ready():
	light_mask = 0

# override the get_props function in Game_Modes/Base/Cartridge_Model.gd
func get_props():
	return {
		"img": self.img,
		"img_asset": material_assets_path % self.img,
		"desc": self.desc,
		"ws": self.ws
	}

# override the set_props function in Game_Modes/Base/Cartridge_Model.gd
func set_props(props):
	if !props.has("img") : return
	self.img = props.img
	self.desc = props.desc
	if props.has("what"): self.ws.what = props.what
	if props.has("who"): self.ws.who = props.who
	if props.has("where"): self.ws.where = props.where
	emit_signal("Update_Label", self.desc)
	emit_signal("Update_Ws", self.ws)
	self.update()

# override the draw function in Game_Modes/Base/Cartridge_Model.gd
func draw():
	pass