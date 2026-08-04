extends Node2D

@export var Enemy_path : String

func _ready() -> void:
	var Enemy = load(Enemy_path).instantiate()
	add_child(Enemy)
