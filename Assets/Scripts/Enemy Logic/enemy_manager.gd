@icon("uid://cy6jdmqfkf064")
extends Node2D
class_name EnemyManager 
@export_file("*.tscn") var enemy

func _ready() -> void:
	if enemy != null:
		spawn_enemy()
		

func spawn_enemy():
	enemy = load(enemy).instantiate()
	add_child(enemy)
	enemy.global_position = position
