extends CharacterBody2D

@export var speed = 400

@onready var animated_sprite = $AnimatedSprite2D
@onready var _animation_player = $AnimationPlayer


func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("Up"):
		velocity.y -= 1
	if Input.is_action_pressed("Left"):
		velocity.x -= 1
	if Input.is_action_pressed("Right"):
		velocity.x += 1
	if Input.is_action_pressed("Down"):
		velocity.y += 1
	# Set velocity based on direction and speed
	velocity = velocity.normalized() * speed
	position += velocity * delta

# Move and handle collisions
#move_and_slide()
