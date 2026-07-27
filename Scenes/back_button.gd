extends Button


func _on_mouse_entered() -> void:
<<<<<<< Updated upstream
	$"../../../MenuItems/SelectHover".play()


func _on_pressed() -> void:
	$"../../../MenuItems/SelectClick".play()
	$"../..".hide()
	$"../../../MenuItems/Start".show()
	$"../../../MenuItems/Settings".show()
	$"../../../MenuItems/Quit".show()
=======
	selectHoverSFX.play()


func _on_pressed() -> void:
	selectClickSFX.play()
	$"../../../MenuItems".show()
	$"../..".hide()
>>>>>>> Stashed changes
