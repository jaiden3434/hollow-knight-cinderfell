extends Button




func _on_mouse_entered() -> void:
	# Plays hover sound when mouse hovers
	$SelectHover.play()
	print("sfwe")


func _on_pressed() -> void:
	$SelectClick.play()
