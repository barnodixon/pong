extends CharacterBody2D

var SPEED = Global.ball_speed
var started : bool = false



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("start"):
		start()
	if started == true:
		if velocity.x == 0:
			velocity.x = randi_range(-1, 1) * SPEED
			SPEED += 20
		if velocity.y == 0:
			velocity.y = randi_range(-1, 1) * SPEED
			SPEED += 20
	
	move_and_slide()
	
func start():
	started = true

