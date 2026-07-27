extends Button


func _on_mouse_entered() -> void:
	$"../../../MenuItems/SelectHover".play()


func _on_pressed() -> void:
<<<<<<< Updated upstream
	$"../../../MenuItems/SelectClick".play()
=======
	selectClickSFX.play()
	settingsPopup.hide()
	$"../../../VideoPopup".show()
>>>>>>> Stashed changes
