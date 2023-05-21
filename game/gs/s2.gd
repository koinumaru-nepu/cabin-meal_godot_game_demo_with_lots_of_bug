extends CanvasLayer

var dialogs = []

var current = 0


export var interval = 0.07

onready var content = $content
#onready var avatar = $content/avatar
#
onready var tween = $content/Tween
onready var button = $content/Button    

# Called when the node enters the scene tree for the first time.
func _ready():
	show_dbx([{text="加塞•瓦伦诺指挥官：‘暴力犯罪还在日渐增多，我们没\n办法制止。’\n\n帕西瓦尔•塞缪恩班长：‘我们也在努力维持秩序，但是\n队员里也出现了…特殊情况。’\n\n加塞•瓦伦诺指挥官：‘帕西，你们那里究竟有多少人还\n能正常工作？’\n\n帕西瓦尔•塞缪恩班长：‘还有两三个，但是我敢肯定他\n们的身体也在变差。’"},
	{text="格尔帕•班克罗尔班长：‘我们这里几乎已经全军覆没了，\n虽然还没有队内暴力事件出现，但是大家也已经没力气执\n勤了。’\n\n加塞•瓦伦诺指挥官：‘如果可以的话，尽可能地集合还有\n活动能力的人，隔离那些身体变差的人。’\n\n霍恩•埃斯比诺沙书记员：‘虽然可能不太人道，但是为了\n撑下去，也许我们可以收集并加工那些……食物，然后进\n行配给。’"},
	{text="加塞•瓦伦诺指挥官：‘你在说什么！我们是人！不是动物！’\n\n格尔帕•班克罗尔班长：‘不要这么说，指挥官，我理解书记\n员的想法，每次看到我那些虚弱的队员，我也会同情他们……’\n\n帕西瓦尔•塞缪恩班长：‘但毕竟我们是人啊。还是等一等吧，\n等暴风雪结束后，救援直升机就能过来了。’\n\n加塞•瓦伦诺指挥官：‘帕西说得对。我们不要再讨论食物问\n题了。散会。’\n\n记录结束。"},
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
		get_tree().change_scene("res://scn/dbx/c5dbx6.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tween_tween_all_completed():
	button.show()
