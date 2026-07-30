extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State
@export var dash: State

@onready var coyote_time: Timer = $"../../Coyote Time"
@onready var camera_2d: Camera2D = $"../../Camera2D"


func ready() -> void:
	
	player.velocity.x += Globals.dashSpeed * Globals.playerDirection 

		
func update(_delta: float) -> void:
		switch_state.emit(idle)
