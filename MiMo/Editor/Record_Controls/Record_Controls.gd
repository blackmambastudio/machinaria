extends Container

var data_memory = {}
onready var Main_Monitor = get_node("/root/MiMo/Editor/Main_Monitor")

func _ready():
	$Eject_Button.connect("button_up", $Cassette_Slot, "eject_cassette")
	$Record_Button.connect("button_up", self, "record")
	$Erase_Button.connect("button_up", $Cassette_Slot, "erase_cassette")

func set_memory(data_memory):
	self.data_memory = data_memory

func record():
	if data_memory:
		$Cassette_Slot.record_cassette(data_memory)
	elif Main_Monitor:
		Main_Monitor.display("no data to record", 3)