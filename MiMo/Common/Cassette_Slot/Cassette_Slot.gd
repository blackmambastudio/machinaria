extends "res://MiMo/Common/Slot/Slot.gd"

var ejected = false

func get_data():
	return inserted.get_props()


func eject_cassette():
	if is_empty() or inserted.is_busy():
		return
	inserted.unlock()

func insert_object(props):
	.insert_object(props)
	inserted.lock()

func record_cassette(data):
	if is_empty() or inserted.is_busy():
		return
	if inserted.active_bars > 0:
		return
	
	inserted.record(data)

func erase_cassette():
	if is_empty() or inserted.is_busy():
		return
	inserted.erase()