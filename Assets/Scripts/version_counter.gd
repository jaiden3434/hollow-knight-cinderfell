extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = str("Closed Pre-Alpha Build " + ProjectSettings.get_setting("application/config/version"))
