extends CharacterBody2D

#method 1 attempt
const speed = 30.0

@onready var animation = $AnimatedSprite2D

func _physics_process(delta):
	
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		animation.flip_h = true
		animation.play("walking_traveller")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		animation.play("walking_traveller")
		animation.flip_h = false
	elif Input.is_action_pressed("ui_down"):
		velocity.y += 1
		animation.play("walking_traveller")
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= 1
		animation.play("walking_traveller")
		
	else:
		animation.play("idle_traveller")
		velocity = Vector2.ZERO
		
	velocity = velocity.normalized() * speed
	move_and_slide()

#method 2 attempt
#const speed = 40.0
#@onready var animation = $AnimatedSprite2D
#var leftFacing = false
#
#
#func _physics_process(delta):
	#var velocity = Vector2.ZERO
	#
	#if Input.is_action_pressed("ui_right"):
		#velocity.x += 1
		#animation.flip_h = true
		#animation.play("walking_traveller")
	#if Input.is_action_pressed("ui_left"):
		#velocity.x -= 1
		#animation.play("walking_traveller")
	#if Input.is_action_pressed("ui_down"):
		#velocity.y += 1
		#animation.play("walking_traveller")
	#if Input.is_action_pressed("ui_up"):
		#velocity.y -= 1
		#animation.play("walking_traveller")
	#else:
		#animation.play("idle_traveller")
		#$travellerSound.stop()
		#
	#if velocity != Vector2.ZERO:
		#$travellerSound.play()
		#velocity = velocity.normalized() * speed
		#move_and_slide()
	#
	#
		#
