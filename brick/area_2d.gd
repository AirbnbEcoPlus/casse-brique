extends Area2D

var rng = RandomNumberGenerator.new()
func _ready() -> void:
	var random = rng.randf_range(-10.0, 10.0)
	if random > 7:
		GameManager.add_point()
		queue_free()





func _on_body_entered(_body: Node2D) -> void:
	GameManager.add_point()
	$playboom.play()
	hide()
	$CollisionShape2D.set_deferred("disabled", true)
	
	await $playboom.finished
	queue_free()
