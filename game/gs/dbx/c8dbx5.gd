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
		{text="                         《紧急通知》\n\n\n\n抄送以下单位：\n种子库\n诱变室\n后勤部\n安保队\n\n目前已证明NV2917号样本存在极大传染性，且性状依然会在人类蛋白酶上得\n到表达。立即关闭研究基地，直到撤离队伍赶到。\n\n                                        ——首席研究员迪亚哥•布鲁诺"},
	
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
	
#	avatar.texture = avatar_map[dialog.avatar]

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
#		get_tree().change_scene("res://scn/s1.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tween_tween_all_completed():
	button.show()
