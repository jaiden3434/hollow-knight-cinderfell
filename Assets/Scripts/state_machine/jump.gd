extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State

func enter_state() -> void:
	player.velocity.y = -800.0

func update(_delta: float) -> void:
	if player.is_on_floor():
		switch_state.emit(idle)
