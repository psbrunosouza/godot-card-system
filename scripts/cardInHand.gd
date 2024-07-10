extends TextureRect

func _process(_delta):
	global_position = Vector2(
		get_global_mouse_position().x - size.x/2, 
		get_global_mouse_position().y - size.y/2
	)
