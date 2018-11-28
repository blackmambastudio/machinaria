tool
extends Container

export (int) var current_page = 0
var total_pages = 0

func _ready():
	total_pages = $Pages.get_child_count()
	show_current_page()
	
func show_current_page():
	var index = 0
	for child in $Pages.get_children():
		child.visible = index == current_page
		index += 1
	
	$Page_Indicator.text = "Page " + str(current_page + 1)+ " of " + str(total_pages)

func next():
	current_page += 1
	if current_page >= total_pages:
		current_page = total_pages - 1
	show_current_page()

func previous():
	current_page -= 1
	if current_page <= 0:
		current_page = 0
	show_current_page()