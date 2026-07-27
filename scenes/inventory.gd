extends Node3D
var items: Array[Item] = []

func _ready():
	var bengdai = load("res://objects/bengdai.tres")
	add_item(bengdai)
	

func add_item(item: Item):
	items.append(item)
func use_item(index:int, player):

	if index >= items.size():
		return

	var item = items[index]

	item.use(player)

	items.remove_at(index)
