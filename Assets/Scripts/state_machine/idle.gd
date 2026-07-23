extends State

@export var move: State
@export var jump: State
@export var fall: State
@export var idle: State



func enter_state() -> void:
	pass

func update(_delta: float) -> void:
	if Input.is_action_pressed("x_axis"):
		switch_state.emit(move)
	if Input.is_action_just_pressed("y_axis"):
		switch_state.emit(jump)
