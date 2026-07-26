extends Button


#Plays mouse hover sound effect.
func _on_mouse_entered() -> void:
	$"../SelectHover".play()


func _on_pressed() -> void:
# fades out screen, i really would like it to last longer but this is as best as i can get it
	$"../../BlackScreen".color.a = lerp($"../../BlackScreen".color.a, 255.0 , 0.01)
#Plays mouse button press sound effect.
	$"../SelectClick".play()
#Quits the game after the sound effect is finished.
	await $"../SelectClick".finished
	get_tree().quit()
