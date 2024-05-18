extends Area2D
signal new_round

func _on_body_entered(body):
	if body.position.x > 793:
		print("Player 2 Scores!")
		Global.player2_score += 1
		
	elif body.position.x < 7:
		print("Player 1 Scores!")
		Global.player1_score += 1
		
	emit_signal("new_round")
