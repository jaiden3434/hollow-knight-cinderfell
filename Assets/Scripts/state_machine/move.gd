extends State


@export var player: CharacterBody2D

@export var move: State
@export var jump: State
@export var fall: State
@export var idle: State


func update(_delta: float) -> void:
	var axis = Input.get_axis("left", "right")
	
	if axis:
		player.velocity.x = 300.0 * axis
	else:
		player.velocity.x = 0.0
	
	if Input.is_action_just_pressed("y_axis"):
		switch_state.emit(jump)
