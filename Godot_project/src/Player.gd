extends KinematicBody2D

export (int) var speed = 1200
export (int) var jump_speed = -1800
export (int) var gravity = 4000
export (float, 0, 1.0) var friction = 0.1
export (float, 0, 1.0) var acceleration = 0.25

var _velocity = Vector2.ZERO
var _can_jump = false


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
	if is_on_floor():
		_can_jump = true
	else:
		_coyote_time()
	
	_get_input()
	_velocity.y += gravity * delta
	_velocity = move_and_slide(_velocity, Vector2.UP)
	if Input.is_action_just_pressed("ui_up"):
		if _can_jump:
			_velocity.y = jump_speed

#Adds a delay to allow extra jump time after a player walks off of a ledge
func _coyote_time():
	yield(get_tree().create_timer(.1), "timeout")
	_can_jump = false
