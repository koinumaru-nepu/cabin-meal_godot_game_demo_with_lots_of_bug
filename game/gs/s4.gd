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
	show_dbx([{text="他在身上摸了摸。\n\n即便是有些僵硬的手，依然能展开上山前新买的折叠刀。\n\n上面反射着雪夜的迷离光芒，还有他慢慢坚定的眼神。"},
	{text="\n\n“谢谢你。对不起。”"},
	{text="\n\n*咀嚼声*"},
	{text="\n\n这一次，他吃上了。\n\n久违的’机舱餐。"},
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
		get_tree().change_scene("res://scn/thx.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tween_tween_all_completed():
	button.show()
