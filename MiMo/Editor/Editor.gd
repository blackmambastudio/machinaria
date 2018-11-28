extends Node2D

# aca deberia tener un modelo que es la unidad de procesamiento
# la cual se encarga de calcular la suma de estas vueltas
onready var Game_Mode = get_node("/root/Game_Mode")
onready var News_Provider = Game_Mode.get_news_provider()
onready var News_Processor = Game_Mode.News_Processor_Class.new()

var started = false
var recording = false

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
	
	$Container/Start_Button.connect("button_down", self, "start_job")
	
	$Record_Controls.connect("on_erase", self, "on_erase_cassette")
	$Record_Controls.connect("on_record", self, "on_record_cassette")


func turn_on():
	$Main_Monitor.turn_on()
	$Preview_Section/Monitor.turn_on()
	$Main_Monitor/Emo_Signal.visible = false
	
	var timer = Timer.new()
	timer.set_one_shot(true)
	timer.set_timer_process_mode(Timer.TIMER_PROCESS_IDLE)
	timer.set_wait_time(1.5)
	timer.start()
	add_child(timer)
	yield(timer, "timeout")
	
	if(Game_Mode.day == 0):
		$Main_Monitor.show_large_text(Game_Mode.intro_text, 60)

func turn_off():
	$Main_Monitor.turn_off()
	$Preview_Section/Monitor.turn_off()


func process_material(index, data):
	News_Processor.update_material(index, data)
	$Record_Controls.set_memory(News_Processor.data_result)
	
	var emo_signal = null
	if data:
		emo_signal = data.emo_signal
	
	$Main_Monitor/Emo_Signal.add_segment(index, emo_signal)
	
	# check data result from news processor, if a solution is found then 
	# display it to the user
	if News_Processor.data_result and News_Processor.data_result.solution:
		var solution = News_Processor.data_result.solution
		if solution:
			$Main_Monitor.display("Emotion set: " + solution.emotion + "\n", 3)


func select_material(index, data, selected):
	for child in $Cartridge_Loader.get_children():
		if child.index == index: continue
		child.deactivate_switch()
	
	# lock material
	News_Processor.select_material(index, selected)
	$Main_Monitor/Emo_Signal.lock_segment(index)
	

func play_material(index):
	if !recording:
		News_Processor.show_material(index)


func toggle_button_master(x, y, active):
	pass


func set_solutions(data):
	News_Processor.load_solutions(data.solutions)
	$Main_Monitor/Emo_Signal.visible = true
	recording = false


func start_job():
	if !started:
		$Main_Monitor.show_large_text("", 3)
		News_Provider.report_news()
		started = true
	else: 
		$Main_Monitor.display("...", 3)


func on_record_cassette(data):
	recording = true
	News_Processor.display_texture = false
	News_Processor.update()
	$Main_Monitor.show_large_text(data, 15)
	
func on_erase_cassette():
	recording = false