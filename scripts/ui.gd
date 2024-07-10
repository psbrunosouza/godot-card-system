extends CanvasLayer

@onready var player_side: MarginContainer = $Stack/PlayerSide

func _ready():
	player_side.custom_minimum_size = (
		Vector2(player_side.custom_minimum_size.x, get_viewport().size.y * 0.2)
	)
