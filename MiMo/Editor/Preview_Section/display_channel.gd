extends Sprite

func change_to_text(value):
	
	$BG1/Letter.text = value[7]
	$BG2/Letter.text = value[6]
	$BG3/Letter.text = value[5]
	$BG4/Letter.text = value[4]
	$BG5/Letter.text = value[3]
	$BG6/Letter.text = value[2]
	$BG7/Letter.text = value[1]
	$BG8/Letter.text = value[0]