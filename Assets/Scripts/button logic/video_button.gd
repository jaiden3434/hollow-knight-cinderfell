extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer


@onready var settingsPopup = $"../.."

func _on_mouse_entered() -> void:
	selectHoverSFX.play()


func _on_pressed() -> void:
	selectClickSFX.play()
	settingsPopup.show()
	$"../../../VideoPopup".visible = true
