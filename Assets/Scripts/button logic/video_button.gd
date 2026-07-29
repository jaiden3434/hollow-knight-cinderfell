extends Button


@export var selectHoverSFX: AudioStreamPlayer
@export var selectClickSFX: AudioStreamPlayer

@onready var settings_popup: PanelContainer = $"../.."
@onready var video_popup: PanelContainer = $"../../../VideoPopup"


func _on_mouse_entered() -> void:
	selectHoverSFX.play()
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)

func _on_pressed() -> void:
	selectClickSFX.play()
	settings_popup.hide()
	video_popup.show()
