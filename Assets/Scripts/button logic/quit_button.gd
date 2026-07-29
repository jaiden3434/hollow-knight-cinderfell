extends Button


@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer


func _on_mouse_entered() -> void:
	selectHoverSFX.play()
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)

func _on_pressed() -> void:
	selectClickSFX.play()
	$"../../Fade".play("fade_out")
#Quits the game after the sound effect is finished.
	await selectClickSFX.finished
	get_tree().quit()
