extends Node2D

@export var vitesse: int

	
func _physics_process(delta: float) -> void:
	var direction = 0
	var raquette = get_parent() as Node2D
	
	if Input.is_action_pressed("p2_left"):
		direction -= 1
	if Input.is_action_pressed("p2_right"):
		direction += 1
		
	if Input.is_action_pressed("p2_action"):
		raquette.queue_free()

	raquette.position.x += direction * vitesse * delta
	raquette.position.x = clamp(raquette.position.x, 35, 1115)
	
