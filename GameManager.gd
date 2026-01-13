extends Node

signal score_updated(new_score)

var score : int = 150

func reset() -> void:
	score = 150
	
	
	

func add_point():
	score -= 1
	score_updated.emit(score)
	print("Score actuel : ", score)
	
	if score == 0:
		get_tree().change_scene_to_file("res://end.tscn")
	


	
