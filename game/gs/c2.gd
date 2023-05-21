extends Node2D

onready var u0a = $u0a
onready var dbx0 = $dbx0
#onready var dbx1 = $dbx1
#onready var dbx2 = $dbx2

onready var dbx0hide = $dbx0/content/Button


var point1 = Vector2(447,-90)
var point2 = Vector2(1390,-90)
var point3 = Vector2(3350,-90)
var point4 = Vector2(1091,-90)
var point5 = Vector2(1091,-90)
var time = 0
var timeDirection = 1
var moveDuration = 1

#var temp = 0
#var clk = 0


func _ready():
	dbx0.hide()
#	dbx1.hide() 
#	dbx2.show()
##	dbx2.hide() 
#	dbx3.hide()
	pass

func _process(delta):
	moveing(delta,point1,point2)
	if u0a.position.x > 1090 :
		dbx0.show()

func moveing(delta,var a,var b):
	
	if (time > moveDuration or time < 0):
#		timeDirection *= -1
		timeDirection = 0

	time += delta * timeDirection
	var t = time / moveDuration

	u0a.position = lerp(a,b, t)
	pass
