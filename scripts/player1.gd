extends CharacterBody2D


const SPEED = 300.0
var started : bool = false

func _physics_process(_delta):
	if Input.is_action_just_pressed("start"):
		start()

	if started == true:
		var direction = Input.get_axis("player1up", "player1down")
		if direction:
			velocity.y = direction * SPEED
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
			
		position.y = clamp(position.y, 106, 344)

		move_and_slide()

func start():
	started = true
