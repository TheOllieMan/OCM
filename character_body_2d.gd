extends CharacterBody2D

@export var speed = 400

func _physics_process(delta):
	# Get input direction as a normalized vector
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Set velocity based on direction and speed
	velocity = direction * speed
	
	# Move and handle collisions
	move_and_slide()   
	#^^^^ learn
