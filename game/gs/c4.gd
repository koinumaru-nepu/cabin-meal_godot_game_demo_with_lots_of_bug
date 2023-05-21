extends Node2D


onready var dbx0 = $dbx0
onready var dbx1 = $dbx1
onready var dbx2 = $dbx2
onready var dbx3 = $dbx3
onready var dbx4 = $dbx4
onready var dbx5 = $dbx5
onready var dbx6 = $dbx11
onready var dbx7 = $dbx7
onready var dbx8 = $dbx8
onready var dbx9 = $dbx9
onready var dbx10 = $dbx10
#onready var tdbx0 = $dbx0.get_property_list()
#onready var tdbx1 = $dbx1
#onready var tdbx2 = $dbx2
#onready var tdbx3 = $dbx3
#onready var tdbx4 = $dbx4
#onready var tdbx5 = $dbx5
var tdbx0 = 0
var tdbx1 = 0
var tdbx2 = 0
var tdbx3 = 0
var tdbx4 = 0
var tdbx5 = 0
var tdbx6 = 0
var tdbx7 = 0
var tdbx8 = 0
var tdbx9 = 0
onready var u0a = $u0a
var gtemp = 0
var ptemp = 0#position temp

func _ready():
	#hide dialogue as default setting
	dbx0.show()
	dbx1.hide() 
	dbx2.hide() 
	dbx3.hide()
	dbx4.hide() 
	dbx5.hide()
	dbx6.hide() 
	dbx7.hide()
	dbx8.hide() 
	dbx9.hide() 
	dbx10.hide()

func _process(delta):
	if u0a.position.x < -6:
#		u0a.position = [130,21]
		u0a.position.x = 130
		u0a.position.y = -40
#		u0a.position.x = 751
#		u0a.position.y = -115
	if u0a.position.x > 477 and ptemp == 0 and u0a.position.y > 80:
#		u0a.position = [130,21]
		u0a.position.x = 130
		u0a.position.y = -40
	if ptemp == 2 and u0a.position.x < 800 and u0a.position.y > 80:	#for dbx10	
		u0a.position.x = 751
		u0a.position.y = -130
#		ptemp = 3
	if u0a.position.x > 200 and tdbx1 == 0 and u0a.position.x < 210:	#dbx1
		dbx1.show()
		tdbx1 = 1
	if tdbx2 == 0 and u0a.position.x < 59:	#dbx2
		dbx2.show()
		tdbx2 = 1
	if tdbx3 == 0 and u0a.position.x > 360 and u0a.position.y > -36:	#dbx3
		dbx3.show()
		tdbx3 = 1
	if tdbx4 == 0 and u0a.position.x > 360 and u0a.position.y < -80:	#dbx4
		dbx4.show()
		tdbx4 = 1
	if tdbx5 == 0 and u0a.position.x > 464 and u0a.position.y < -80:	#dbx5
		dbx5.show()
		tdbx5 = 1
		
	if u0a.position.y > 112 and tdbx6 == 0:	#dbx6
		dbx6.show()
		tdbx6 = 1
	if tdbx7 == 0 and u0a.position.x > 630:	#dbx7
		dbx7.show()
		tdbx7 = 1
	if tdbx8 == 0 and u0a.position.x > 770 :	#dbx8
		dbx8.show()
		tdbx8 = 1
	if tdbx9 == 0 and u0a.position.x > 880:	#dbx9
		dbx9.show()
		tdbx9 = 1
	if u0a.position.x > 574 and u0a.position.y < 0 and u0a.position.y > -40:	#dbx5
		dbx10.show()
#		ptemp == 4
#		tdbx5 = 1	
		
	if  tdbx1*tdbx2*tdbx3*tdbx4*tdbx5 ==1:
		ptemp = 1
	if tdbx6*tdbx7*tdbx8*tdbx9 ==1:	
		ptemp = 2
#	if ptemp == 2 and u0a.position.y < -100:	#for dbx10	
#		ptemp = 3
#	if (u0a.position.x > 1020 or u0a.position.x < 800) and temp == 0 :
#		dbx0.show()
#		temp = 1
#	elif (u0a.position.x > 1120 or u0a.position.x < 750) and temp == 1 :
#		dbx1.show()
#		temp = 2
#	elif (u0a.position.x > 1600 or u0a.position.x < 500) and temp == 2 :
#		dbx3.show()	
#	elif u0a.position.x > 2800 and temp == 1:
#
##		get_tree().set_input_as_handled()
		
#	if !dbx1.is_displayed_folded():
#		dbx2.show() 
