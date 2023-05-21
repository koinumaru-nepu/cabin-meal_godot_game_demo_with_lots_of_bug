extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var dbx0 = $dbx0
onready var dbx1 = $dbx1
onready var dbx2 = $dbx2
#onready var dbx3 = $dbx3
#onready var dbx4 = $dbx4
#onready var dbx5 = $dbx5
#onready var dbx6 = $dbx6
#onready var dbx7 = $dbx7
#onready var dbx8 = $dbx8
#onready var dbx9 = $dbx9

onready var u0a = $u0a
onready var button0 = $event0
onready var button1 = $event1
#onready var button2 = $event2
#onready var button3 = $event3
#onready var button4 = $event4
onready var button5 = $event5
#onready var note = $u0a/note
#onready var note = $note
var gtemp = 0
var ptemp = 0
var tdbx1 = 0
var tdbx2 = 0
#var tdbx3 = 0
#var tdbx4 = 0
#var tdbx5 = 0
#var tdbx6 = 0
#var tdbx7 = 0
#var tdbx8 = 0
#var tdbx4a = 0
#var tdbx5 = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	dbx0.show()
	dbx1.hide() 
	dbx2.hide() 
#	dbx3.hide()
#	dbx4.hide() 
##	dbx4a.hide() 
#	dbx5.hide()
#	dbx6.hide() 
#	dbx7.hide() 
#	dbx8.hide()
#	dbx9.hide() 
#
	button0.hide()
	button1.hide()
#	button2.hide()
#	button3.hide()
#	button4.hide()
#	button5.hide()
#	note.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
#	if u0a.position.x < -64 and u0a.position.y < 20 :
##		u0a.position = [130,21]
#		u0a.position.x = -60
#		u0a.position.y = -32
##		u0a.position.x = 751
##		u0a.position.y = -115
#	if u0a.position.x < -1950 and u0a.position.y > 20:
#	#		u0a.position = [130,21]
#		u0a.position.x = -1885
#		u0a.position.y = 635
#	if u0a.position.y > 540 and ptemp == 0:
#		u0a.position.x = 862
#		u0a.position.y = 192
#		get_tree().change_scene("res://scn/c7.tscn")
#	if  ptemp == 1 and u0a.position.y > -220 and u0a.position.x > 980:
##		u0a.position = [130,21]
#		u0a.position.x = 992
#		u0a.position.y = -330
##	if ptemp == 2 and u0a.position.x < 800 and u0a.position.y > 80:	#for dbx10	
##		u0a.position.x = 751
##		u0a.position.y = -130
###		ptemp = 3
	if u0a.position.x < 972 or u0a.position.x > 1539 :	#dbx1
		button0.show()
		button1.show()
		dbx1.show()
		tdbx1 = 1
	
#	if tdbx2 == 0 and tdbx1 == 1 and u0a.position.y > 60:	#dbx2
#		button0.show()
##		dbx2.show()
##		tdbx2 = 1
#	if tdbx3 == 0 and tdbx2 == 1 :	#dbx3
#		button1.show()
##		dbx3.show()
##		tdbx3 = 1
#	if tdbx4 == 0 and tdbx3 == 1:	#dbx4
#		button2.show()
##		dbx4.show()
##		tdbx4 = 1
#	if tdbx5 == 0 and tdbx4 == 1:	#dbx5
#		button3.show()
#	if ptemp == 1 and u0a.position.x < 827:#dbx6 and 7
#		dbx6.show()
#		tdbx6 = 1
#	if tdbx7 == 0 and tdbx6 == 1:#dbx7
#		button4.show()
#	if tdbx8 == 0 and tdbx7 == 1:#dbx8
#		button5.show()
#	if tdbx8 == 1 and (u0a.position.x < -49 or u0a.position.x > 1676):#dbx9
#		dbx9.show()
##	if tdbx4a == 0 and u0a.position.x > 220 and u0a.position.x < 240 and u0a.position.y < -250:	#dbx4a
##		dbx4a.show()
##		tdbx4a = 1
##	if tdbx5 == 0 and tdbx4a == 1 and u0a.position.x > 750 and u0a.position.x < 760 and u0a.position.y < -250:	#dbx5
##		dbx5.show()
##		button.show()
##		tdbx5 = 1
###
###	if u0a.position.y > 112 and tdbx6 == 0:	#dbx6
###		dbx6.show()
###		tdbx6 = 1
###	if tdbx7 == 0 and u0a.position.x > 630:	#dbx7
###		dbx7.show()
###		tdbx7 = 1
###	if tdbx8 == 0 and u0a.position.x > 770 :	#dbx8
###		dbx8.show()
###		tdbx8 = 1
###	if tdbx9 == 0 and u0a.position.x > 880:	#dbx9
###		dbx9.show()
###		tdbx9 = 1
###	if u0a.position.x > 574 and u0a.position.y < 0 and u0a.position.y > -40:	#dbx5
###		dbx10.show()
####		ptemp == 4
####		tdbx5 = 1	
###
#	if  tdbx1*tdbx2*tdbx3*tdbx4*tdbx5 ==1:
#		ptemp = 1
##	if tdbx6*tdbx7*tdbx8*tdbx9 ==1:	
##		ptemp = 2
	pass
#
#func _on_event0_pressed():
#	dbx2.show()
#	tdbx2 = 1
#	button0.hide()
##	dbx1.show()
##	tdbx1 = 1
###	get_tree().change_scene("res://scn/s2.tscn")
##
##
##
##func _on_event1_pressed():
##	button1.hide()
##	dbx2.show()
##	tdbx2 = 1
###	pass # Replace with function body.
#
#
#func _on_event1_pressed():
#	dbx3.show()
#	tdbx3 = 1
#	button1.hide()
#	pass # Replace with function body.
#
#
#func _on_event2_pressed():
#	dbx4.show()
#	tdbx4 = 1
#	button2.hide()
#	pass # Replace with function body.
#
#
#func _on_event3_pressed():
#	dbx5.show()
#	tdbx5 = 1
#	button3.hide()
#	pass # Replace with function body.
#
#
#func _on_event4_pressed():
#	dbx7.show()
#	tdbx7 = 1
#	button4.hide()
#	pass # Replace with function body.
#
#
#func _on_event5_pressed():
#	dbx8.show()
#	tdbx8 = 1
#	button5.hide()
#	pass # Replace with function body.


func _on_event1_pressed():
	dbx2.show()
	pass # Replace with function body.


func _on_event0_pressed():
	dbx2.show()
	pass # Replace with function body.
