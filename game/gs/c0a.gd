extends Node2D

onready var dbx1 = $dbx1
onready var u0a = $u0a
var temp = 0

func _ready():
	dbx1.hide() 
	get_tree().set_input_as_handled()

	

func _unhandled_input(event):
	dbx1.show()


func _on_interactArea_area_entered(area):
	pass # Replace with function body.


func _on_interactArea_area_exited(area):
	pass # Replace with function body.
