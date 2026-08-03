extends Node2D

@export_file("*.tscn") var enemy_path

func _ready() -> void:
	var enemy = load(enemy_path).instantiate()
	enemy.position = position
	add_child(enemy)
	
