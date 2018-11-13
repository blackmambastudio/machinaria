var Cartridge_Class = preload("Cartridge_Model.gd")
var News_Processor_Class = preload("News_Processor_Model.gd")
var Cartridge_Section_Class = preload("Cartridge_Section_Model.gd")
var Cassette_Class = preload("Cassette_Model.gd")
var News_Provider_Class = preload("News_Provider_Model.gd")

# sent a data with the cassette
func on_cassette_sent(data):
	pass

# expect an array of cartridge with configurations
func process_cartridges(cartridge_datas):
	pass
