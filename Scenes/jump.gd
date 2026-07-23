extends State

@export var player: CharacterBody2D

@export var move: State
@export var jump: State
@export var fall: State
@export var idle: State

func enter_state() -> void:
	player.velocity.y = 300.0
	
func update(_delta: float) -> void:
	if player.velocity.y <= 0.0:
		switch_state.emit(fall)
	if Input.is_action_just_released("up"):
		player.velocity.y /= 5.0
