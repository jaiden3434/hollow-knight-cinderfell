extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State
@export var dash: State

@onready var coyote_time: Timer = $"../../Coyote Time"
@onready var camera_2d: Camera2D = $"../../Camera2D"


func update(_delta: float) -> void:
	var axis = Input.get_axis("left", "right")
	player.velocity.x = Globals.dashSpeed * axis 
	
	if Input.is_action_pressed("y_axis") and Globals.canJump and (player.is_on_floor() or !coyote_time.is_stopped()):
		switch_state.emit(jump)
		
	
