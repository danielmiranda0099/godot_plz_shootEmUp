extends Path2D

export (float) var speed = 300

var recorridos

func _ready():
	recorridos = get_children()

func _physics_process(delta):
	for recorrido in recorridos:
		recorrido.offset += speed*delta	

