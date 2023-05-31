extends Area2D

export (int) var velocidad = 500

onready var personaje = get_tree().get_nodes_in_group("personaje")
onready var posicion_personaje = personaje[0].global_position

func set_explosion():
	collision_mask = 0
	collision_layer = 0
	$AnimatedSprite.animation = "Explosion"
	yield($AnimatedSprite, "animation_finished")
	queue_free()

func _physics_process(delta):
	posicion_personaje = personaje[0].global_position
	global_position = global_position.move_toward(posicion_personaje, velocidad*delta)
