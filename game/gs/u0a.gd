extends KinematicBody2D

const gravity = 2000 #gravity
const speed = 700
const jump_force = 1300
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector2.ZERO
var is_jumping = 0

onready var animation_player = $AnimationPlayer
onready var sprite = $Sprite

func _physics_process(delta):
	velocity = move_and_slide(velocity,Vector2.UP)
	if is_on_floor():
		is_jumping = 0
	
func _input(event):
	if event.is_action_pressed("jump") and not is_jumping:
		velocity.y = -jump_force
		is_jumping = 1
	

func _process(delta):
	var direction = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	velocity.x = direction * speed
	
	velocity.y += gravity * delta
	
	if is_jumping and velocity.x == 0:
		animation_player.play("jump")
	elif direction == 0:
		animation_player.play("idle")
#	elif velocity.x == 0 and velocity.y > 0:  ##climb
#		animation_player.play("climb")
	else:
		animation_player.play("walk")
		
		
	if direction != 0:
		sprite.flip_h = direction > 0
	
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
