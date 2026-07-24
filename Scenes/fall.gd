extends State

@export var player: CharacterBody2D

@export var move: State
@export var jump: State
@export var fall: State
@export var idle: State

func enter_state() -> void:
	pass

func update(_delta: float) -> void:
	player.velocity.y = lerp(player.velocity.y, player.velocity.y * 1.15, 0.2)
	var axis = Input.get_axis("left", "right")
	
	if axis:
		player.velocity.x = 300.0 * axis
	else:
		player.velocity.x = 0.0	
	
	if player.is_on_floor():
		switch_state.emit(idle)
