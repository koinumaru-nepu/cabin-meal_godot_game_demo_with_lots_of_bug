extends Node2D

onready var u0a = $u0a
onready var dbx1 = $dbx1

var point1 = Vector2(447,-90)
var point2 = Vector2(1390,-90)
var point3 = Vector2(1200,-90)
var point4 = Vector2(1310,-90)
var point5 = Vector2(1091,-90)
var time = 0
var timeDirection = 0.5
var moveDuration = 1

func _ready():
#	dbx1.hide()
	dbx1.hide() 
#	dbx2.show()
##	dbx2.hide() 
#	dbx3.hide()
	pass

func _process(delta):
	moveing(delta,point3,point4)
	
	if u0a.position.x > 1301 :
		dbx1.show()

func moveing(delta,var a,var b):
	
	if (time > moveDuration or time < 0):
#		timeDirection *= -1
		timeDirection = 0

	time += delta * timeDirection
	var t = time / moveDuration

	u0a.position = lerp(a,b,t)
	pass
