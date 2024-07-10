extends MarginContainer

class_name CardPlacement

func _on_mouse_entered():
	GameManager.is_on_placement = true
	GameManager.card_placement = self

func _on_mouse_exited():
	GameManager.is_on_placement = false
	GameManager.card_placement = null
