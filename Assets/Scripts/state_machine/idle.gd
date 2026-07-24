extends State


@export var jump: State
@export var idle: State



func enter_state() -> void:
	pass

func update(_delta: float) -> void:
	
	if Input.is_action_pressed("y_axis") and Globals.canJump:
		switch_state.emit(jump)
