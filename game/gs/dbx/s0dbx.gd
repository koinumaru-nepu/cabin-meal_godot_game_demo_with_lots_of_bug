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
	show_dbx([
		{text="1972年安第斯空难。"},
		{text="一个令全世界都不会忘记的悲惨故事。"},
		{text="如果在那片茫茫的雪原绝境中，严重缺少食物的你，愿意靠吃同伴的尸体活下去吗？\n抑或是当你去世后，愿意把自己的身体贡献给同伴吗？"},
		{text="这是一个令人难以回答的问题。但是空难的幸存者们用自己的实际行动回答了这个问题。"},
		{text="说它是安第斯的圣餐也好，食人魔的愧疚也罢，这都是幸存者围绕终身的愧怍。"},
		{text="但是，新闻界是不会在意这些的，只要不引发强烈抗议，总会有人以‘探寻真相’作为\n强词夺理，去做些什么的。"},
		{text="那么，就让我来讲述这场那个记者以‘探寻真相’为借口的冒险吧。"},
		{text="还望各位，享受这个故事。"},
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
	button.hide()
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
		get_tree().change_scene("res://scn/c0.tscn")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Tween_tween_all_completed():
	button.show()
