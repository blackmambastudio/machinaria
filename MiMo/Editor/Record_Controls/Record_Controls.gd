extends Container

var data_memory = {}

func _ready():
	$Eject_Button.connect("button_up", $Cassette_Slot, "eject_cassette")
	$Record_Button.connect("button_up", self, "record")
	$Erase_Button.connect("button_up", $Cassette_Slot, "erase_cassette")

func set_memory(data_memory):
	self.data_memory = data_memory

func record():
	$Cassette_Slot.record_cassette(data_memory)