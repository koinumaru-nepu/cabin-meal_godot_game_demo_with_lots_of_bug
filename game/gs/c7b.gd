extends Node2D



onready var dbx1 = $dbx1

onready var u0a = $u0a
onready var button0 = $event0
#onready var button1 = $event1
#onready var note = $u0a/note
#onready var note = $note
var gtemp = 0
var ptemp = 0
var tdbx1 = 0
var tdbx2 = 0
#var tdbx3 = 0
#var tdbx4 = 0
#var tdbx4a = 0
#var tdbx5 = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	dbx1.show()
#	dbx1.hide() 
#	dbx2.hide() 
#	dbx3.hide()
#	dbx4.hide() 
#	dbx4a.hide() 
#	dbx5.hide()
	button0.hide()
#	button1.hide()
#	note.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if u0a.position.x < -120 :
#		u0a.position = [130,21]
		u0a.position.x = -117
		u0a.position.y = -30
#		u0a.position.x = 751
#		u0a.position.y = -115
	if u0a.position.x > 100 :
		get_tree().change_scene("res://scn/c8.tscn")
#	if  ptemp == 1 and u0a.position.y > -220 and u0a.position.x > 980:
##		u0a.position = [130,21]
#		u0a.position.x = 992
#		u0a.position.y = -330
##	if ptemp == 2 and u0a.position.x < 800 and u0a.position.y > 80:	#for dbx10	
##		u0a.position.x = 751
##		u0a.position.y = -130
###		ptemp = 3
	if u0a.position.x > -100:	#dbx1
		button0.show()
#		dbx1.show()
#		tdbx1 = 1
#	if tdbx2 == 0 and tdbx1 == 1 and u0a.position.y > -520 and u0a.position.x < 160:	#dbx2
#		button1.show()
#		dbx2.show()
#		tdbx2 = 1
#	if tdbx3 == 0 and u0a.position.x > 885 and u0a.position.x < 902 and u0a.position.y < -250:	#dbx3
#		dbx3.show()
#		tdbx3 = 1
#	if tdbx4 == 0 and u0a.position.x > 500 and u0a.position.x < 520 and u0a.position.y < -250:	#dbx4
#		dbx4.show()
#		tdbx4 = 1
#	if tdbx4a == 0 and u0a.position.x > 220 and u0a.position.x < 240 and u0a.position.y < -250:	#dbx4a
#		dbx4a.show()
#		tdbx4a = 1
#	if tdbx5 == 0 and tdbx4a == 1 and u0a.position.x > 750 and u0a.position.x < 760 and u0a.position.y < -250:	#dbx5
#		dbx5.show()
#		button.show()
#		tdbx5 = 1
##
##	if u0a.position.y > 112 and tdbx6 == 0:	#dbx6
##		dbx6.show()
##		tdbx6 = 1
##	if tdbx7 == 0 and u0a.position.x > 630:	#dbx7
##		dbx7.show()
##		tdbx7 = 1
##	if tdbx8 == 0 and u0a.position.x > 770 :	#dbx8
##		dbx8.show()
##		tdbx8 = 1
##	if tdbx9 == 0 and u0a.position.x > 880:	#dbx9
##		dbx9.show()
##		tdbx9 = 1
##	if u0a.position.x > 574 and u0a.position.y < 0 and u0a.position.y > -40:	#dbx5
##		dbx10.show()
###		ptemp == 4
###		tdbx5 = 1	
##
#	if  tdbx1*tdbx2 ==1:
#		ptemp = 1
##	if tdbx6*tdbx7*tdbx8*tdbx9 ==1:	
##		ptemp = 2
#
#
func _on_event0_pressed():
	button0.hide()
#	dbx1.show()
#	tdbx1 = 1
	get_tree().change_scene("res://scn/c8.tscn")
	


#func _on_event1_pressed():
#	button1.hide()
#	dbx2.show()
#	tdbx2 = 1
##	pass # Replace with function body.
