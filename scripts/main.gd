extends Node2D


func _on_score_area_new_round():
	get_tree().reload_current_scene()
