extends RigidBody2D
@export var vitesse: int

var direction : Vector2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	direction = Vector2(2, 2)
	pass # Replace with function body.
	
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(direction * vitesse * delta);
	if collision:
		direction = direction.bounce(collision.get_normal())


func get_random_direction() -> Vector2:
	var new_direction = Vector2()
	new_direction.x = 1
	new_direction.y = randf_range(-1, 1)
	return new_direction.normalized()
