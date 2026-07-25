extends Button




func _on_mouse_entered() -> void:
	# Plays hover sound when mouse hovers
	$SelectHover.play()


func _on_pressed() -> void:
	# fades out screen, i really would like it to last longer but this is as best as i can get it
	$"../../BlackScreen".color.a = lerp($"../../BlackScreen".color.a, 255.0, 0.01)
	# Plays sound
	$SelectClick.play()
	
	# waits for sound to finish playing
	await $SelectClick.finished
	get_tree().quit()
