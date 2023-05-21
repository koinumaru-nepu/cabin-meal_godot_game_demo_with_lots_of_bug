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
		{text="                         《紧急通知》\n\n\n\n我觉得我还是能活着出去的，但我也觉得这是我的遗书。\n\n我是负责NV2917号样本的研究员，他们只把诱变室的留档样品销毁了，但还是入\n库了。这是一起的起源。\n\n总而言之，如果未来有人看到了我这份笔记，那么，我很抱歉，请继续看下去。\n\n这里是我国研究高蛋白植物的地方，我们使用了诱变技术和基因修饰技术。听不\n懂也没关系。我们不小心制造出了一种孢子，感染之后会修改人体内的蛋白酶，\n让人无法摄入来自其它物种的蛋白质，但是被感染的物种可以通过同类相食来满\n足自己的蛋白质需求。"},
		{text="                         《紧急通知》\n\n\n\n唯一的好消息是它不耐低温，没办法扩散到雪山外。\n\n我在研究中偶然发现，食用没有被这种孢子感染的同类的肉大概可以治疗，而且\n被治愈一次后就会终身免疫，就像天花一样。\n\n但是我不敢说出来——我真的不知道还有谁是没被感染的。\n\n如果你看到了这段文字，那么走到这里的你也早已被感染。"},
		{text="                         《紧急通知》\n\n\n\n我不知道我们会怎么样，很快配有氧舱的直升机就到了。\n\n如果能活下来的话……\n\n                                        ——研究员卡特尔•加西亚"},
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
