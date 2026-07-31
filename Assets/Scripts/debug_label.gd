extends Label
func _process(delta: float) -> void:
		text = str($"../Air Dash time".time_left)
