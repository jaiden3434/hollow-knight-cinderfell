extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer

func _on_mouse_entered() -> void:
	selectHoverSFX.play()


func _on_pressed() -> void:
	selectClickSFX.play()
