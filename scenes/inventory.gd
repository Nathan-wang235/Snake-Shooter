extends Node3D
var items:Array[InventorySlot] = []

func _ready():
	var bengdai = load("res://objects/bengdai.tres")
	add_item(bengdai)
	add_item(bengdai)
	add_item(bengdai)
	add_item(bengdai)
	add_item(bengdai)

func add_item(item: Item):

	# 先看看背包里有没有这种物品
	for slot in items:
		if slot.item == item:
			slot.count += 1
		return

	# 没有的话，新建一个槽位
	var new_slot = InventorySlot.new()
	new_slot.item = item
	new_slot.count = 1

	items.append(new_slot)

func use_item(index: int, player):

	if index >= items.size():
		return

	var slot = items[index]

	slot.item.use(player)

	slot.count -= 1

	if slot.count <= 0:
		items.remove_at(index)
