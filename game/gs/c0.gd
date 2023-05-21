extends Node2D



onready var dbx0 = $dbx0
onready var dbx1 = $dbx1
onready var u0a = $u0a
var temp = 0

func _ready():

	dbx1.hide() 

	
		
func _process(delta):
	if u0a.position.x > 1000 and temp == 0:
		dbx1.show()
		temp = 1
	elif u0a.position.x > 2800 and temp == 1:
		

		get_tree().change_scene("res://scn/c1.tscn")
