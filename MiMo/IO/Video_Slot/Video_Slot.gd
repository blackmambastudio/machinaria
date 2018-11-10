extends Container

signal Cassette_Sent

var all_cartridges_returned = true

func _ready():
	$Cassette_Slot.insert_object({"n": 1, "bars": 0})
	$Eject_Button.connect("button_up", $Cassette_Slot, "eject_cassette")
	$Send_Button.connect("button_up", self, "on_send")

func on_send():
	if $Cassette_Slot.is_empty():
		print("please insert a video cassette")
		return
	
	if $Cassette_Slot.inserted.active_bars == 0:
		print("the cassette is empty")
		return

	if !all_cartridges_returned:
		print("return all cartridges into the rack")
		return
	
	# should verify the cassette and emmit a signal
	emit_signal("Cassette_Sent", $Cassette_Slot.get_data())