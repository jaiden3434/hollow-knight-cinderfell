extends Button

@onready var VideoPopup = $"../../../.."
@onready var SettingsPopup = $"../../../../../SettingsPopup"

func _on_pressed() -> void:
	VideoPopup.hide()
	SettingsPopup.show()

func _on_mouse_entered() -> void:
	pass # Replace with function body. We need to put hover sfx!!!
