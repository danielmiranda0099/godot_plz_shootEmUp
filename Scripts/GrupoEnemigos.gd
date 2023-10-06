extends Path2D

export (float) var speed = 300

var recorridos
var is_in_screen = false

func _ready():
	recorridos = get_children()

func _physics_process(delta):
	if is_in_screen:
		for recorrido in recorridos:
			if recorrido.get_class() == "PathFollow2D":
				recorrido.offset += speed*delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_VisibilityNotifier2D_screen_entered():
	is_in_screen = true
