extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer

@onready var fade: AnimationPlayer = $"../../Fade"



#Plays mouse hover sound effect.
func _on_mouse_entered() -> void:
	selectHoverSFX.pitch_scale = randf_range(0.8, 1.0)
	selectHoverSFX.play()
	print("sfwe")

#Plays mouse button press sound effect.
func _on_pressed() -> void:
	selectClickSFX.play()
	
	# Fade out screen, then switch to World scene upon animation finish
	fade.play("fade_out")
	await fade.animation_finished
	get_tree().change_scene_to_file("uid://be6uwv5gjxtbp")
	
	
