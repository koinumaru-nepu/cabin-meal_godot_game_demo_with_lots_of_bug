extends Node2D


onready var dbx0 = $dbx0
onready var dbx1 = $dbx1
onready var dbx2 = $dbx2
onready var dbx3 = $dbx3
onready var u0a = $u0a
var temp = 0

func _ready():
	
	dbx0.hide()
	dbx1.hide() 
	dbx2.show()
#	dbx2.hide() 
	dbx3.hide()
#	u0a.position.x =1000
		
		
func _process(delta):

	if (u0a.position.x > 1020 or u0a.position.x < 800) and temp == 0 :
		dbx0.show()
		temp = 1
	elif (u0a.position.x > 1120 or u0a.position.x < 750) and temp == 1 :
		dbx1.show()
		temp = 2
	elif (u0a.position.x > 1600 or u0a.position.x < 500) and temp == 2 :
		dbx3.show()	
