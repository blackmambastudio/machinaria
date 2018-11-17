extends Node2D

# aca deberia tener un modelo que es la unidad de procesamiento
# la cual se encarga de calcular la suma de estas vueltas
onready var Game_Mode = get_node("/root/Game_Mode")
onready var News_Processor = Game_Mode.News_Processor_Class.new()

func _ready():
	# setup cartridge slots
	var index = 0
	for child in $Cartridge_Loader.get_children():
		child.connect("Material_Updated", self, "process_material")
		child.index = index
		index += 1
	
	$Main_Monitor.add_child(News_Processor)
	$Main_Monitor.move_child(News_Processor, 1)

func process_material(index, data):
	News_Processor.update_material(index, data)
	$Record_Controls.set_memory(News_Processor.data_result)
