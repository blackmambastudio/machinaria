extends Container


func set_time(time_text):
	$time_display/time_0/Text.text = time_text[4]
	$time_display/time_1/Text.text = time_text[3]
	$time_display/time_2/Text.text = time_text[2]
	$time_display/time_3/Text.text = time_text[1]
	$time_display/time_4/Text.text = time_text[0]


func set_date(date_text):
	$time_display/date_0/Text.text = date_text[8]
	$time_display/date_1/Text.text = date_text[7]
	$time_display/date_2/Text.text = date_text[6]
	$time_display/date_3/Text.text = date_text[5]
	$time_display/date_4/Text.text = date_text[4]
	$time_display/date_5/Text.text = date_text[3]
	$time_display/date_6/Text.text = date_text[2]
	$time_display/date_7/Text.text = date_text[1]
	$time_display/date_8/Text.text = date_text[0]

func set_label(new_label):
	$Monitor/Label.text = new_label