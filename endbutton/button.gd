extends Button




func _on_pressed() -> void:
	GameManager.reset()
	get_tree().change_scene_to_file("res://main.tscn")
	
	
