extends Container

var data_memory = {}
onready var Main_Monitor = get_node("/root/MiMo/Editor/Main_Monitor")
signal on_record
signal on_erase

func _ready():
	$Eject_Button.connect("button_up", $Cassette_Slot, "eject_cassette")
	$Record_Button.connect("button_up", self, "record")
	$Erase_Button.connect("button_up", self, "erase")

func set_memory(data_memory):
	self.data_memory = data_memory

func record():
	if data_memory:
		if data_memory.solution:
			$Cassette_Slot.record_cassette(data_memory)
			emit_signal("on_record", $Cassette_Slot.get_record_report())
		elif Main_Monitor:
			Main_Monitor.display("no emotion to record", 3)
	elif Main_Monitor:
		Main_Monitor.display("no data to record", 3)

func erase():
	emit_signal("on_erase")
	$Cassette_Slot.erase_cassette()