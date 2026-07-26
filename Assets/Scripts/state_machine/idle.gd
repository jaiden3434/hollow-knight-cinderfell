extends State


@export var player: CharacterBody2D

@export var jump: State
@export var idle: State



func enter_state() -> void:
	pass

func update(_delta: float) -> void:
	
	if Input.is_action_pressed("y_axis") and Globals.canJump and player.is_on_floor:
		switch_state.emit(jump)
		
