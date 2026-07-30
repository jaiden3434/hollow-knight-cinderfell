extends State


@export var player: CharacterBody2D

@export var jump: State
@export var idle: State

@onready var coyote_time: Timer = $"../../Coyote Time"
@onready var camera_2d: Camera2D = $"../../Camera2D"


func enter_state() -> void:
	pass

func update(_delta: float) -> void:
	

		
	
	if player.is_on_floor():
		camera_2d.offset.y = lerp(camera_2d.offset.y, -800.0, 0.0005)
	elif player.velocity.y > 0.0:
		camera_2d.offset.y = lerp(camera_2d.offset.y, 800.0, 0.0005)
	if !player.is_on_floor() and coyote_time.is_stopped():
		coyote_time.start()
	# Regular Jump
	if Input.is_action_pressed("y_axis") and Globals.canJump and player.is_on_floor():
		switch_state.emit(jump)
	if Input.is_action_pressed("y_axis") and Globals.canJump and  !coyote_time.is_stopped():
		switch_state.emit(jump)
