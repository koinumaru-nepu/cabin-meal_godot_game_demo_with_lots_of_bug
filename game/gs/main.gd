extends Node2D

onready var b0 = $continue
onready var b1 = $setting

func _ready():
	b0.hide()
	b1.hide()
#		pass

func _on_new_game_pressed():
	get_tree().change_scene("res://scn/s0.tscn")


func _on_continue_pressed():
	get_tree().change_scene("res://scn/pls_wait.tscn")


func _on_setting_pressed():
	get_tree().change_scene("res://scn/pls_wait.tscn")


func _on_quit_pressed():
	get_tree().quit()

