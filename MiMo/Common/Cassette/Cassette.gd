tool
extends "res://MiMo/Common/Draggable_Sprite/Draggable_Sprite.gd"

onready var Game_Mode = get_node("/root/Game_Mode")
onready var Cassette_Model = Game_Mode.Cassette_Class.new()

var Bar = preload("res://MiMo/Common/Cassette/Bar.tscn")
export (Texture) var on_ejected_texture
const TOTAL_BARS = 6

var locked = false
enum STATUS {IDLE, RECORDING, ERASING}

var bar_index = 0
var status = STATUS.IDLE
var active_bars = 0

func _ready():
	$Bar_00.add_to_group("bar")
	for i in range(0, TOTAL_BARS - 1):
		var new_bar = $Bar_00.duplicate()
		new_bar.position.x -= 40*(i+1)
		add_child(new_bar)
		new_bar.name = "Bar_0" + str(i+1)
		new_bar.add_to_group("bar")
	
	$Timer.connect("timeout", self, "update_bars")


func handle_drag():
	if locked: return
	.handle_drag()


func unlock():
	if !self.locked: return
	self.locked = false
	self.texture = on_ejected_texture
	$SFX.playsound()
	self.get_tree().call_group("bar", "temp_position", 0, 14)


func lock():
	if self.locked: return
	self.locked = true
	self.texture = original_texture
	self.get_tree().call_group("bar", "reset_position")


func set_props(new_props):
	Cassette_Model.load_data(new_props)
	if !new_props:
		self.unlock()
		return
	
	active_bars = new_props["bars"]
	
	for i in range(0, TOTAL_BARS):
		var bar = get_node("Bar_0" + str(i))
		if active_bars > 0:
			bar.turn_on()
		else:
			bar.turn_off()


func get_props():
	var props = Cassette_Model.get_props()
	if props:
		props["bars"] = self.active_bars
	
	return props


func return_to_original_position():
	self.lock()


func record(new_props):
	if !self.locked or status != STATUS.IDLE:
		return
	bar_index = 0
	status = STATUS.RECORDING
	active_bars = TOTAL_BARS
	$Timer.start()
	$RecSFX.playsound()
	Cassette_Model.load_data(new_props)


func erase():
	if !self.locked or status != STATUS.IDLE:
		return
	bar_index = 0
	status = STATUS.ERASING
	active_bars = 0
	$Timer.start()
	$EraseSFX.playsound()
	Cassette_Model.load_data({"bars": 0})


func update_bars():
	if status == STATUS.RECORDING:
		update_record()
	if status == STATUS.ERASING:
		update_erase()
	bar_index += 1
	if bar_index >= TOTAL_BARS:
		status = STATUS.IDLE
		$Timer.stop()


func update_record():
	var bar = get_node("Bar_0" + str(bar_index))
	bar.turn_on()


func update_erase():
	var bar = get_node("Bar_0" + str(TOTAL_BARS - bar_index - 1))
	bar.turn_off()


func is_busy():
	return status != STATUS.IDLE

func object_grab():
	$SFX.playsound()

func object_insert():
	$SFX.playsound()