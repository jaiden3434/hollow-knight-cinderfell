extends Button




func _on_mouse_entered() -> void:
	$SelectHover.play()


func _on_pressed() -> void:
	$SelectClick.play()
	await $SelectClick.finished
	get_tree().quit()
