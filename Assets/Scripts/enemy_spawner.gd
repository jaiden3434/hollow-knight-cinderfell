extends Node2D

@export var Enemy : PackedScene

func _ready() -> void:
	Enemy.instantiate()
