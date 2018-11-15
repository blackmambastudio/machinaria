extends TextureButton

func _ready():
	connect("button_down", self, "on_down")
	connect("button_up", self, "on_release")

func on_down():
	$SequenceDevice.playsound()

func on_release():
	$SequenceDevice.playsound()