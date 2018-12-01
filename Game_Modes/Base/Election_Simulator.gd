extends Node

# 0 = neutral, 1 = left party, 2 = right party
var intentions = [20, 40, 40]
export (float) var unit  = 2

# depending on the information from the cassette
func process_data(data):
	modify_intention(1, 2)

# change vote intention between the 2 main candidates and neutral 
func modify_intention(index, power):
	if index == 0: return
	# the other candidate
	var other = [0,2,1][index]

	# if the intention is negative for the candidate in index
	# a portion of the people turn to the neutral side
	if power < 0:
		intentions[index] += power*unit
		intentions[0] -= power*unit
	
	# if the intention is positive, we need to check if there 
	# are enough people from neutral to turn into the candidate index side
	if power > 0:
		var res = intentions[0] - power*unit
		# if there are not enough, we get all of the neutral people for 
		# the candidate index, then we take a 20% of the missing people 
		# from the other candidate and move them to the neutral side
		if res < 0:
			intentions[index] += intentions[0]
			intentions[0] = -res*0.4
			intentions[other] += res*0.4
		
		# if there are enough, we get all of the neutral people for 
		# the candidate index, then we take a 10% of the potential people 
		# from the other candidate and move them to the neutral side
		else:
			intentions[index] += power*unit
			intentions[0] -= power*unit
			intentions[0] += power*unit*0.1
			intentions[other] -= power*unit*0.1