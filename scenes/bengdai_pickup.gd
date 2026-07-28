extends Area3D


@export var item: Item

var player_in_range = false
var player = null


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("Player"):
		player = body
		player_in_range = true


func _on_body_exited(body: Node3D) -> void:
	if body == player:
		player = null
		player_in_range = false

func _process(delta):

	if player_in_range and Input.is_action_just_pressed("interact"):
		player.inventory.add_item(item)
		queue_free()
