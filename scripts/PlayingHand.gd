extends HBoxContainer

@onready var card_scene: PackedScene = load("res://scenes/card.tscn")

func _ready():
	for i in 5:
		var card = card_scene.instantiate()
		add_child(card)
