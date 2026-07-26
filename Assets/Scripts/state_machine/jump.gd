extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State

func enter_state() -> void:
	player.velocity.y = -Globals.jumpHeight

func update(_delta: float) -> void:
	if player.is_on_floor():
		switch_state.emit(idle)
		
	if Input.is_action_just_released("y_axis") and player.velocity.y < 0.0:
		player.velocity.y = 0.0
