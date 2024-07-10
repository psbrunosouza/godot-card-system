extends MarginContainer

class_name Card

@onready var card_sprite: Sprite2D = $Sprite
@onready var animation: AnimationPlayer = $Animation

const MOUSE_LEFT_BUTTON = 1

var card_in_hand_scene: PackedScene = preload("res://scenes/cardInHand.tscn") 
var card_on_board_scene: PackedScene = preload("res://scenes/cardOnBoard.tscn")
var card_highlighted: bool = false
var card_in_hand: TextureRect

func _unhandled_input(event):
	if (event is InputEventMouseButton) and event.button_index == MOUSE_LEFT_BUTTON:
		if event.is_pressed():
			if card_highlighted:
				card_in_hand = card_in_hand_scene.instantiate()
				get_tree().root.get_node("Game/UI").add_child(card_in_hand)
				card_sprite.hide()
		elif !GameManager.is_on_placement:
			if card_in_hand != null:
				card_sprite.show()
				card_in_hand.queue_free()
		else:
			if card_in_hand != null:
				queue_free()
				card_in_hand.queue_free()
				(GameManager.card_placement as CardPlacement).add_child(
					card_on_board_scene.instantiate()
				)

func _on_mouse_entered():
	card_highlighted = true
	animation.play("highlight-up")

func _on_mouse_exited():
	card_highlighted = false
	animation.play("highlight-down")

