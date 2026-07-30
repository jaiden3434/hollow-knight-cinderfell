extends State

@export var player: CharacterBody2D

@export var jump: State
@export var idle: State

@onready var camera_2d: Camera2D = $"../../Camera2D"


func update(_delta: float) -> void:
	var axis = Input.get_axis("left", "right")
	
	if Globals.canMove:
		if axis:
			if Globals.dyanmicCamera == true:
				# NOTE: Theres prolly a far better way to do ts, but as i said before, it makes the most sense to me. Meant to make the camera play nice if we are approaching a camera bound
					Globals.playerDirection = axis
			else:
				Globals.playerDirection = 0
			player.velocity.x = Globals.playerSpeed * axis 
		else:
			player.velocity.x = 0.0
			Globals.playerDirection = 0
	
		
