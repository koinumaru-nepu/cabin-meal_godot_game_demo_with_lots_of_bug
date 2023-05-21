extends Area2D
#
#
#
func _ready():
	connect("body_entered",self,"on_body_entered")
	connect("body_exited",self,"on_body_exited")

#
func on_body_entered(node):
	print("我是一个进入我的区域")
