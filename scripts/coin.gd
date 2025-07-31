extends Area2D

@onready var coin_counter = %CoinCounter
@onready var coin_exit = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	print("+1 coin")
	coin_counter.add_score()
	coin_exit.play("when player touch")
	
