extends Camera2D

@onready var player: CharacterBody2D = $".."
@onready var camera_2d: Camera2D = $"."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Smoother camera movement, sets camera position to players with a delay
	pass
	
