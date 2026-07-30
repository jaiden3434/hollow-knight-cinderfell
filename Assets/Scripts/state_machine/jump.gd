extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State

@onready var camera_2d: Camera2D = $"../../Camera2D"

func enter_state() -> void:
		player.velocity.y = -Globals.jumpHeight

func update(_delta: float) -> void:
		# Offsets camera to allow for maxiumium viewability

	
	if player.is_on_floor():
		camera_2d.offset.y = lerp(camera_2d.offset.y, -800.0, 0.0005)
	elif player.velocity.y > 0.0:
		camera_2d.offset.y = lerp(camera_2d.offset.y, 800.0, 0.0005)
	
	
	if player.is_on_floor():
		switch_state.emit(idle)

		# Jump cutting
	if Input.is_action_just_released("y_axis") and player.velocity.y < 0.0:
		player.velocity.y = 0.0
	
	
