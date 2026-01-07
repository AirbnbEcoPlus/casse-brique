extends Area2D

signal addPointSignal

var rng = RandomNumberGenerator.new()
func _ready() -> void:
	var random = rng.randf_range(-10.0, 10.0)
	if random > 7:
		emit_signal("addPointSignal")
		queue_free()





func _on_body_entered(_body: Node2D) -> void:
	emit_signal("addPointSignal")
	$playboom.play()
	queue_free()
