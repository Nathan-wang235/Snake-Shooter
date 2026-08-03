extends Node3D

class_name EnemySpawner

@export var enemy_prefab: PackedScene
@export var player_node: CharacterBody3D

func _ready():
	spawn($spawn_points/Start_01, 5)

func spawn(spawn_point: Marker3D, count: int):

	print("spawn_point =", spawn_point)
	print("enemy_prefab =", enemy_prefab)

	for i in range(count):

		var enemy = enemy_prefab.instantiate()

		print("enemy =", enemy)

		if spawn_point == null:
			push_error("spawn_point is NULL!")
			return

		if enemy == null:
			push_error("enemy is NULL!")
			return

		add_child(enemy)

		enemy.global_position = spawn_point.global_position

		enemy.player = player_node
