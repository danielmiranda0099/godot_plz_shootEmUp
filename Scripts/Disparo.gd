extends RigidBody2D



func _on_Area2D_area_entered(area):
	if area.is_in_group("Enemigo"):
		Global.add_puntos(area.puntos)
		area.set_explosion()
