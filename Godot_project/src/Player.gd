extends KinematicBody2D

export (int) var speed = 1200
export (int) var jump_speed = -1800
export (int) var gravity = 4000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

var _velocity = Vector2.ZERO


func _get_input():
	var direction = 0
	if Input.is_action_pressed("ui_right"):
		direction += 1
	if Input.is_action_pressed("ui_left"):
		direction -= 1
	if direction != 0:
		_velocity.x = lerp(_velocity.x, direction * speed, acceleration)
		$AnimatedSprite.play("walk")
		$AnimatedSprite.scale.x = direction
	else:
		_velocity.x = lerp(_velocity.x, 0, friction)
		$AnimatedSprite.play("default")


func _physics_process(delta):
	_get_input()
	_velocity.y += gravity * delta
	_velocity = move_and_slide(_velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor():
			_velocity.y = jump_speed
