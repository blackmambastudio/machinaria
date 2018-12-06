tool
extends Sprite

export (String) var letter = ' '
var letters = '0123456789abcdefghijklmnopqrstuvwxyz_-!:/ '
var index_of_letter = 0
var index_of_target_letter = 0

func _ready():
	letter = letter.to_lower()
	index_of_letter = letters.find(letter)
	index_of_target_letter = index_of_letter
	$Letter.text = letter


func change_letter(target_letter):
	index_of_target_letter = letters.find(target_letter.to_lower())


func _process(delta):
	if index_of_letter != index_of_target_letter:
		index_of_letter += 1
		if index_of_letter >= len(letters):
			index_of_letter = 0
		letter = letters[index_of_letter]
		$Letter.text = letter