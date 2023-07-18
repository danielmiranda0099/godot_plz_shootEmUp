extends Path2D

export (float) var speed = 300

var recorridos

func _ready():
	recorridos = get_children()

func _physics_process(delta):
	for recorrido in recorridos:
		recorrido.offset += speed*delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
