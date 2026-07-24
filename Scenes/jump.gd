extends State

@export var player: CharacterBody2D

@export var move: State
@export var jump: State
@export var fall: State
@export var idle: State

func enter_state() -> void:
	player.velocity.y = -800.0

func update(_delta: float) -> void:
	if player.is_on_floor():
		switch_state.emit(idle)
	if Input.is_action_pressed("x_axis"):
		switch_state.emit(move)
