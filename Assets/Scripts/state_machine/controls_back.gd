extends Button


@onready var selectHoverSFX: AudioStreamPlayer = $"../../../../SelectHover"
@onready var selectClickSFX: AudioStreamPlayer = $"../../../../SelectClick"
@onready var ControlsPopup: PanelContainer = $"../../.."
@onready var Fade: AnimationPlayer = $"../../../../Fade"
@onready var SettingsPopup: PanelContainer = $"../../../../SettingsPopup"


func _on_mouse_entered() -> void:
	selectHoverSFX.play()
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)

func _on_pressed() -> void:
	selectClickSFX.play()
	SettingsPopup.show()
	Fade.play_backwards("controls_fade")
	await Fade.animation_finished
	ControlsPopup.hide()
