extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer

#Plays mouse hover sound effect.
func _on_mouse_entered() -> void:
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)
	selectHoverSFX.play()


func _on_pressed() -> void:
# fades out screen
	$"../../Fade".play("fade_out")
#Plays mouse button press sound effect.
	selectClickSFX.play()
#Quits the game after the sound effect is finished.
	await selectClickSFX.finished
	get_tree().quit()
