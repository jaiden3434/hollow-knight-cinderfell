extends Enemy

@export var enemyScene : PackedScene

func enter_state() -> void:
	enemyScene.instantiate()
	
