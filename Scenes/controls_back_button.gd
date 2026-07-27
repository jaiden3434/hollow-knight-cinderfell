extends Button

@onready var ControlPopup = $"../../.."
@onready var SettingsPopup = $"../../../../SettingsPopup"

func _on_pressed() -> void:
	ControlPopup.hide()
	SettingsPopup.show()


func _on_mouse_entered() -> void:
	pass # Replace with function body.
