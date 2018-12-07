# imagine/news_processor_model
extends "res://Game_Modes/Base/News_Processor_Model.gd"

signal Is_in_emotions

var offset_x = 0
var texture_to_show
var selected_index = -1
var display_texture = false
var emotion = 0
var report_template = """[center]= RECORDING NEWS =
SECTION: [color=#B8EEEF]%s[/color]
AFFECTS: [color=#B8EEEF]%s[/color]
PEOPLE WILL FEEL: [color=#F164F3]%s[/color]
= DONE =
[/center]
"""

func _ready():
	reset_total()

func reset_total():
	data_result = {}

func compute_data():
	var total_cartridges = 0
	var index = 0
	var emotion = ""
	for data in data_slots:
		if data:
			total_cartridges += 1
			emotion += data.symbol
		index += 1
	
#	TODO: this could be improved for sure >>
#	get the emotion by its validation rule
	if total_cartridges >= 3:
		var temp_emotion = ""
		match(solutions.validation):
			"one-column":
				temp_emotion = emotion
			"two-column":
				if total_cartridges == 3:
#					check first the left column
					temp_emotion = emotion[0] + emotion[2] + emotion[4]
					if !solutions.has(temp_emotion):
						temp_emotion = emotion[1] + emotion[3] + emotion[5]
				else:
#					check first the left column
					temp_emotion = emotion[0] + emotion[2] + emotion[4] + emotion[6]
					if !solutions.has(temp_emotion):
						temp_emotion = emotion[1] + emotion[3] + emotion[5] + emotion[7]
			"zig-zag":
				if total_cartridges == 4:
					temp_emotion = emotion[0] + emotion[3] + emotion[4] + emotion[7]
		emotion = temp_emotion
	
	var solution = ""
	if solutions.has(emotion):
		solution = solutions[emotion]
	
	if total_cartridges:
		data_result = {
			"emotion": self.emotion,
			"solution": solution,
			"report": ""
		}
		if typeof(solution) != TYPE_STRING:
			data_result.report = report_template % [
				metadata.type.to_upper(),
				metadata.subject.to_upper(),
				solution.emotion.to_upper()
			]
	else:
		data_result = {}


func select_material(index, selected):
	.select_material(index)

	if selected:
		selected_index = index
		display_material_on_index(index)
	else:
		selected_index = -1
	update()


func show_material(index):
	if selected_index != -1:
		return
	if index >= len(data_slots):
		return
	
	display_material_on_index(index)
	update()


func display_material_on_index(index):
	var data = data_slots[index]
	if data != null:
		texture_to_show = load("res://Game_Modes/Imagine/Assets/Material/" + str(data["key"]+".png"))
		display_texture = true
	else:
		display_texture = false


func draw():
	if !display_texture:
		return
	draw_texture(texture_to_show, Vector2(65, 57))

func update_material(index, data):
	.update_material(index, data)
	display_material_on_index(index)


