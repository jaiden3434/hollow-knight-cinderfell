extends PanelContainer


# Called when the node enters the scene tree for the first time.

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_back"):
		$".".visible = false
