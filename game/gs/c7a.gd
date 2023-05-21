extends Node2D

onready var u0a = $u0a
onready var dbx0 = $dbx0

var point1 = Vector2(-372,-30)
var point2 = Vector2(-127,-30)
var point3 = Vector2(-117,-30)
var point4 = Vector2(1310,-90)
var point5 = Vector2(1091,-90)
var time = 0
var timeDirection = 0.5
var moveDuration = 1

var temp = 0
#var clk = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	dbx0.show()
#	dbx1.hide() 
#	dbx2.show()
##	dbx2.hide() 
#	dbx3.hide()
#	button0.hide()
	pass
#	while u0a.position.x != 4000 :
#		if u0a.position.x >4000:
#			u0a.position.x = u0a.position.x - 1
#		else:
#			u0a.position.x = u0a.position.x + 1
#	u0a.velocity.x = -100
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
#
##	u0a.velocity.x = 1000
##	u0a.velocity.y = 1000
#	while u0a.position.x != 4000 :
#		if u0a.position.x >4000:
#			u0a.position.x = u0a.position.x - 1
#		else:
#			u0a.position.x = u0a.position.x + 1

#func _physics_process(delta):
#	var speed = 1 # Change this to increase it to more units/second
#	u0a.position = u0a.position.move_toward(Vector2(200,0), delta * speed)
# Define basic variables and settings

func _process(delta):
#	if temp == 0:
	moveing(delta,point2,point3)
	
#	if u0a.position.x > -200 :
#		button0.show()
#	if u0a.position.x > -128 :
#		temp = 1
	pass
#		dbx1.show()
#		temp = 1
#		clk = delta

#	if  dbx1.temp == 1 :
#		timeDirection = 1
##		var a = delta - clk
##		moveing(a,point2,point3)
#		moveing(delta,point2,point3)
#
#	if u0a.position.x > 3000 :
#		moveing(1,point3,point1)
	# Flip the direction of how time gets added
	# This ensures it moves back to its initial position
#	if (time > moveDuration or time < 0):
##		timeDirection *= -1
#		timeDirection = 0
#	# delta is how long it takes to complete a frame.
#	time += delta * timeDirection
#	var t = time / moveDuration
#
#	u0a.position = lerp(point1,point2, t)

func moveing(delta,var a,var b):
	# Flip the direction of how time gets added
	# This ensures it moves back to its initial position
	if (time > moveDuration or time < 0):
#		timeDirection *= -1
		timeDirection = 0
	# delta is how long it takes to complete a frame.
	time += delta * timeDirection
	var t = time / moveDuration

	u0a.position = lerp(a,b,t)
##
#func _on_event0_pressed():
#	button0.hide()


#func _on_event0_pressed():
##	button0.hide()
##	dbx1.show()
#	get_tree().change_scene("res://scn/c7a.tscn")
##	pass # Replace with function body.
