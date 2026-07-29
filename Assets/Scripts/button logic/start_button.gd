extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer

#Plays mouse hover sound effect.
func _on_mouse_entered() -> void:
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)
	selectHoverSFX.play()
	print("sfwe")

#Plays mouse button press sound effect.
func _on_pressed() -> void:
	selectHoverSFX.play()
