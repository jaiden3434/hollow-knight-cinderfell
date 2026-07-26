extends Button


func _on_mouse_entered() -> void:
	$"../../../MenuItems/SelectHover".play()


func _on_pressed() -> void:
	$"../../../MenuItems/SelectClick".play()
