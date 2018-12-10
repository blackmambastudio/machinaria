extends Container

var seconds = 0
var minutes = 0
var hours = 0

func _ready():
	$time_display/time_0.letters = '0123456789'
	$time_display/time_1.letters = '0123456789'
	$time_display/time_3.letters = '0123456789'
	$time_display/time_4.letters = '0123456789'


func set_time(time_text):
	$time_display/time_0.change_letter(time_text[0])
	$time_display/time_1.change_letter(time_text[1])
	$time_display/time_2.change_letter(time_text[2])
	$time_display/time_3.change_letter(time_text[3])
	$time_display/time_4.change_letter(time_text[4])
	
	minutes = int(time_text[3] + time_text[4])
	hours = int(time_text[0] + time_text[1])


func set_date(date_text):
	$time_display/date_0.change_letter(date_text[0])
	$time_display/date_1.change_letter(date_text[1])
	$time_display/date_2.change_letter(date_text[2])
	$time_display/date_3.change_letter(date_text[3])
	$time_display/date_4.change_letter(date_text[4])
	$time_display/date_5.change_letter(date_text[5])
	$time_display/date_6.change_letter(date_text[6])
	$time_display/date_7.change_letter(date_text[7])
	$time_display/date_8.change_letter(date_text[8])


func set_label(new_label):
	$Monitor/Label.text = new_label


func _process(delta):
	seconds += 40*delta
	if seconds >= 60:
		seconds = 0
		minutes += 1
		$time_display/time_3.change_letter(str(int(minutes/10)))
		$time_display/time_4.change_letter(str(minutes%10))
	
	if minutes >= 60:
		minutes = 0
		hours += 1
		$time_display/time_3.change_letter('0')
		$time_display/time_4.change_letter('0')
		$time_display/time_0.change_letter(str(int(hours/10)))
		$time_display/time_1.change_letter(str(hours%10))
	
	
	
	
	
	