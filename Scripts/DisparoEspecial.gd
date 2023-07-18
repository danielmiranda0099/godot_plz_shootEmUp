extends Node2D


func _on_VisibilityNotifier2D2_screen_exited():
	queue_free()
