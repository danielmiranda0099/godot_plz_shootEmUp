extends ParallaxLayer

export (int) var velocidad = 0

func _process(delta):
	motion_offset -= Vector2(velocidad,0)
