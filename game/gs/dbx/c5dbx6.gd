extends CanvasLayer

var dialogs = []

var current = 0

export var interval = 0.07

onready var content = $content
#onready var avatar = $content/avatar
#
onready var tween = $content/Tween
onready var button = $content/Button
onready var temp = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	show_dbx([
	{text="语焉不详的会议记录……总感觉他们在回避什么。"},
{text="还在这里提食物问题，我感觉食物不匮乏啊。"},
{text="难道是出了什么营养不足的问题？我得再搜集点资料。"},
	])
	pass # Replace with function body.
	

func show_dbx(_dialogs):
	dialogs = _dialogs
	content.show()
	show_dialog(0)
	

func show_dialog(index):
	current = index
	var dialog = dialogs[current]
	content.text = dialog.text


	#hide button
#	button.hide()
	#show texture configure
	tween.interpolate_property(
		content,"percent_visible",0,1,
		interval * content.text.length(),
		Tween.TRANS_LINEAR
	)
	tween.start()
	

	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _unhandled_input(event):
	if event.is_action_pressed("ui_accept"):
		if tween.is_active():
			tween.remove_all()
			content.percent_visible = 1
			button.show()
		get_tree().set_input_as_handled()

func _on_next_pressed():
	
	if tween.is_active():
		tween.remove_all()
		content.percent_visible = 1
	
		
	elif current + 1 < dialogs.size():
		show_dialog(current + 1)
	else:
#		
		content.hide()
		temp = 1
		get_tree().change_scene("res://scn/c6.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tween_tween_all_completed():
	button.show()
