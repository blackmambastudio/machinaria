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
	News_Processor.position.x = $Main_Monitor.rect_size.x/2 - 60
	News_Processor.position.y = $Main_Monitor.rect_size.y/2


func process_material(index, data):
	News_Processor.update_material(index, data)
	$Record_Controls.set_memory(News_Processor.data_result)
