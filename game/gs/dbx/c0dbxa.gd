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
		{text="没有想象中那么困难。即使是对于我这种毫无登山经验的人来说。"}, {text="我看见碎片的反光了。看来目标就在前方。"},
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
	
	#show texture configure
	tween.interpolate_property(
		content,"percent_visible",0,1,
		interval * content.text.length(),
		Tween.TRANS_LINEAR
	)
	tween.start()

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept"):
		if tween.is_active():
			tween.remove_all()
			content.percent_visible = 1
			button.show()
		get_tree().set_input_as_handled()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_next_pressed():
	
	if tween.is_active():
		tween.remove_all()
		content.percent_visible = 1
	
		
	elif current + 1 < dialogs.size():
		show_dialog(current + 1)
	else:
		content.hide()
#		get_tree().change_scene("res://scn/c0a.tscn")

