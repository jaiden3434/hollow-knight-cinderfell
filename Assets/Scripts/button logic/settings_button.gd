extends Button


#Plays mouse hover sound effect.
func _on_mouse_entered() -> void:
	$"../SelectHover".play()

#Plays mouse button press sound effect.
func _on_pressed() -> void:
	$"../SelectClick".play()
	$"../../SettingsPopup".show()
	$"..".hide()
