extends Button


@onready var selectHoverSFX: AudioStreamPlayer = $"../../SelectHover"
@onready var selectClickSFX: AudioStreamPlayer = $"../../SelectClick"
@onready var MenuItems: FlowContainer = $".."
@onready var Fade: AnimationPlayer = $"../../Fade"
@onready var CreditsPopup: Control = $"../../CreditsPopup"


func _on_mouse_entered() -> void:
	selectHoverSFX.play()
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)

func _on_pressed() -> void:
	selectClickSFX.play()
	CreditsPopup.show()
	Fade.play("credits_fade")
	await Fade.animation_finished
	MenuItems.hide()
