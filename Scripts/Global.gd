extends Node

var total_puntos = 0
var vidas = 3

func remove_vida():
	vidas -=1
	print("Vidas:" + String(vidas))
	if vidas <= 0:
		print("wey ya PERDITES")
		return 
	
func add_puntos(puntos):
	total_puntos += puntos
	print("total puntos:" + String(total_puntos))
