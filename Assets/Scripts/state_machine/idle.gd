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
		Globals.hasCoyoteJumped = false
	
	# Starts coyote timer when player is off the floor given its not already activated
	if !player.is_on_floor() and !Globals.hasCoyoteJumped and coyote_time.is_stopped():
		coyote_time.start()
		Globals.hasCoyoteJumped = true
		
		
	if Input.is_action_pressed("y_axis") and Globals.canJump and (player.is_on_floor() or !coyote_time.is_stopped()):
		switch_state.emit(jump)
