@icon("uid://cy6jdmqfkf064")
extends Node
class_name EnemyManager 
@export var active_enemy: Enemy

func _ready() -> void:
	for child_enemy: Enemy in get_children():
		child_enemy.spawn_enemy.connect(spawn_enemy)
func _process(delta: float) -> void:
	pass
		
func physics_process(delta: float) -> void:
	if active_enemy:
		active_enemy.physics_update(delta)

func spawn_enemy(new_enemy: Enemy) -> void:
		if new_enemy == active_enemy:
			return
		if active_enemy:
			active_enemy.exit_state()	
		
		active_enemy = new_enemy
		
		if active_enemy:
			active_enemy.enter_state()
