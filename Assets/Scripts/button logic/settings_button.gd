extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer


#Plays mouse hover sound effect.
func _on_mouse_entered() -> void:
	selectHoverSFX.play()

#Plays mouse button press sound effect.
func _on_pressed() -> void:
	selectClickSFX.play()
	$"../../SettingsPopup".show()
	$"../Start".hide()
	$".".hide()
	$"../Quit".hide()
