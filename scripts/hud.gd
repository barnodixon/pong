extends Control

@onready var player_1_label = $Player1Score
@onready var player_2_label = $Player2Score


func _ready():
	player_1_label.text = str(Global.player1_score)
	player_2_label.text = str(Global.player2_score)
	
