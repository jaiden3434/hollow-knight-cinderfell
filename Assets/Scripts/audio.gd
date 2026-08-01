extends Button


@onready var selectHoverSFX: AudioStreamPlayer = $"../../../SelectHover"
@onready var selectClickSFX: AudioStreamPlayer = $"../../../SelectClick"
@onready var AudioPopup: PanelContainer = $"../../../AudioPopup"
@onready var Fade: AnimationPlayer = $"../../../Fade"
@onready var SettingsPopup: Control = $"../.."


func _on_mouse_entered() -> void:
	selectHoverSFX.play()
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)

func _on_pressed() -> void:
	selectClickSFX.play()
	AudioPopup.show()
	Fade.play("audio_fade")
	await Fade.animation_finished
	SettingsPopup.hide()
