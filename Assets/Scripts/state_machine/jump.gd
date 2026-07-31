extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State
@export var dash: State

@onready var camera_2d: Camera2D = $"../../Camera2D"

func enter_state() -> void:
	player.velocity.y = -Globals.jumpHeight
func update(_delta: float) -> void:
		# Offsets camera to allow for maxiumium viewability

	
	if player.is_on_floor():
		camera_2d.offset.y = lerp(camera_2d.offset.y, -800.0, 0.0005)
	elif player.velocity.y > 0.0:
		camera_2d.offset.y = lerp(camera_2d.offset.y, 800.0, 0.0005)
	
	if Input.is_action_pressed("dash") and Globals.canDash:
		switch_state.emit(dash)
	
	if player.is_on_floor():
		switch_state.emit(idle)
		Globals.canDash = true
		Globals.isDashing = false

		# Jump cutting
	if Input.is_action_just_released("y_axis"):
		player.velocity.y = 0.0
	var axis = Input.get_axis("left", "right")
	
	if Globals.canMove:
		if axis:
			if Input.is_action_pressed("dash"):
				Globals.isRunning = true
				player.velocity.x = lerp(player.velocity.x, (Globals.playerSpeed + Globals.dashSpeed / 2) * axis, 0.005)
			else: 
				player.velocity.x = Globals.playerSpeed * axis
				Globals.isRunning = false
				Globals.canDash = true
		else:
			player.velocity.x = lerp(player.velocity.x,0.0, 0.05)
			Globals.playerDirection = 0
			
	
	
	

	
		

	
