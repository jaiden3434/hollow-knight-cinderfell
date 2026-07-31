extends State


@export var player: CharacterBody2D

@export var jump: State
@export var idle: State
@export var dash: State
@export var air_dash: State


@onready var coyote_time: Timer = $"../../Coyote Time"
@onready var camera_2d: Camera2D = $"../../Camera2D"


func enter_state() -> void:
	pass

func update(_delta: float) -> void:
	if player.is_on_floor():
		Globals.hasCoyoteJumped = false
		Globals.hasDashed = true
		Globals.canMove = true
	
	
	var axis = Input.get_axis("left", "right")
	
	Globals.playerDirection = axis

	if Globals.canMove:
		if axis:
			if Input.is_action_pressed("dash"):
				Globals.isRunning = true
				player.velocity.x = lerp(player.velocity.x, (Globals.playerSpeed + Globals.dashSpeed) * axis, 0.05)
			else: 
				player.velocity.x = Globals.playerSpeed * axis
				Globals.isRunning = false
		else:
			player.velocity.x = 0.0
			Globals.playerDirection = 0
	
		

	
	# Starts coyote timer when player is off the floor given its not already activated
	if !player.is_on_floor() and !Globals.hasCoyoteJumped and coyote_time.is_stopped():
		coyote_time.start()
		Globals.hasCoyoteJumped = true
		
		
	if Input.is_action_pressed("y_axis") and Globals.canJump and (player.is_on_floor() or !coyote_time.is_stopped()):
		switch_state.emit(jump)
		if Globals.isRunning:
			Globals.canDash = false	
	if Input.is_action_just_pressed("dash") and (!Globals.hasDashed and Globals.canDash and !Globals.isRunning) and !player.is_on_floor() and !Globals.isDashing:
		switch_state.emit(dash)
		
