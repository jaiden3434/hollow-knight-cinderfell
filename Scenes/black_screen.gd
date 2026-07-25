extends ColorRect


# Called when the node enters the scene tree for the first time.

func _process(delta: float) -> void:
	color.a = lerp(color.a, 0.0, 0.0005)
