extends Node

var score = 0
@onready var totalCoins = %Coin.get_child_count()
@onready var scoreLabel = $Label

func add_score():
	score += 1
	if (totalCoins - score) > 1:
		scoreLabel.text = str(totalCoins - score) + " coins left..."
	elif (totalCoins - score) == 1:
		scoreLabel.text = "1 coins left"
	elif (totalCoins - score) == 0:
		scoreLabel.text = "You collected\nall coins!"
		scoreLabel.add_theme_color_override("font_color", Color(0, 1, 1, 1))

func _on_ready() -> void:
	scoreLabel.text = str(totalCoins - score) + " coins left..."
