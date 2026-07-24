extends Button




func _on_mouse_entered() -> void:
	# Plays hover sound when mouse hovers
	$SelectHover.play()


func _on_pressed() -> void:
	# Plays sound
	$SelectClick.play()
	
	# Waits for sound to finish, then closes game
	await $SelectClick.finished
	get_tree().quit()
