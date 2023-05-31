extends Area2D

func set_explosion():
	collision_mask = 0
	collision_layer = 0
	$AnimatedSprite.animation = "Explosion"
	yield($AnimatedSprite, "animation_finished")
	queue_free()
