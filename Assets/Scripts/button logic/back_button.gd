extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer


func _on_mouse_entered() -> void:
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)
	selectHoverSFX.play


func _on_pressed() -> void:
	pass #Need to repair. Has errors.
