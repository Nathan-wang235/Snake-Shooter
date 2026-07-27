extends Item
class_name Bengdai

@export var heal_amount := 50

func use(player):
	player.heal(heal_amount)
