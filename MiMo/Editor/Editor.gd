extends Node2D

# aca deberia tener un modelo que es la unidad de procesamiento
# la cual se encarga de calcular la suma de estas vueltas
onready var Game_Mode = get_node("/root/Game_Mode")
onready var News_Provider = Game_Mode.get_news_provider()
onready var News_Processor = Game_Mode.News_Processor_Class.new()

func _ready():
	# setup cartridge slots
	var index = 0
	for child in $Cartridge_Loader.get_children():
		child.connect("Material_Updated", self, "process_material")
		child.connect("Material_Selected", self, "select_material")
		child.set_index(index)
		index += 1
	
	$Main_Monitor.add_child(News_Processor)
	$Main_Monitor.move_child(News_Processor, 1)
	
	$Main_Monitor/Emo_Signal.connect("Index_Updated", self, "play_material")
	$Master_Control.connect("Toggle_Button", self, "toggle_button_master")
	News_Provider.connect("Report_News", self, "set_solutions")


func process_material(index, data):
	News_Processor.update_material(index, data)
	$Record_Controls.set_memory(News_Processor.data_result)
	
	var emo_signal = null
	if data:
		emo_signal = data.emo_signal
	
	$Main_Monitor/Emo_Signal.add_segment(index, emo_signal)


func select_material(index, data, selected):
	for child in $Cartridge_Loader.get_children():
		if child.index == index: continue
		child.deactivate_switch()
	
	# lock material
	News_Processor.select_material(index, selected)
	$Main_Monitor/Emo_Signal.lock_segment(index)
	

func play_material(index):
	News_Processor.show_material(index)
	pass

func toggle_button_master(x, y, active):
	print(x, y, active)


func set_solutions(data):
	News_Processor.load_solutions(data.solutions)
