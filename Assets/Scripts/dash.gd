extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State
@export var dash: State

@onready var coyote_time: Timer = $"../../Coyote Time"
@onready var camera_2d: Camera2D = $"../../Camera2D"
@onready var air_dash_time: Timer = $"../../Air Dash time"


func enter_state() -> void:
	if !Globals.isRunning:
		air_dash_time.start()
		var axis = Input.get_axis("left", "right")
		player.velocity.x = lerp(player.velocity.x, (Globals.dashSpeed + Globals.playerSpeed) * axis, 0.5)

func update(_delta: float) -> void:
	
	if !air_dash_time.is_stopped() and !player.is_on_wall() and !player.is_on_floor():
		Globals.isDashing = true	
		var axis = Input.get_axis("left", "right")
		player.velocity.y = 0.0
	else:
		Globals.isDashing = false
		Globals.hasDashed = true
		switch_state.emit(idle)
		
		
		
