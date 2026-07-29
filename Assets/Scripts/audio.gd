extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer


@onready var settings_popup: PanelContainer = $"../.."
@onready var audio_popup: PanelContainer = $"../../../AudioPopup"


func _on_mouse_entered() -> void:
	selectHoverSFX.play()
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)


func _on_pressed() -> void:
	selectClickSFX.play()
	audio_popup.show()
	settings_popup.hide()
