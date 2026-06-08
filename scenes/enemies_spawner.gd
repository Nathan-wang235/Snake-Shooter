extends Node3D

@export var enemy_prefab : PackedScene
@export var player_node : CharacterBody3D


func _on_timer_timeout() -> void:
	var enemy = enemy_prefab.instantiate()
	add_child(enemy)
	enemy.player = player_node
