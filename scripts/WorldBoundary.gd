extends Area2D

var player_pos : float

func _on_body_entered(body):
	body.velocity.y = -body.velocity.y
