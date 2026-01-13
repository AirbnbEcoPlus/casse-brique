extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "Score: " + str(GameManager.score)
	GameManager.score_updated.connect(_on_score_updated)




func _on_score_updated(new_score):
	text = "Score: " + str(new_score)
