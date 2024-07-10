extends MarginContainer

@onready var anim: AnimationPlayer = $Animation

func _on_mouse_entered():
	anim.play("zoom_in")
	z_index = 1


func _on_mouse_exited():
	anim.play("zoom_out")
	z_index = 0
