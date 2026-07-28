extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer


@onready var settings_popup: PanelContainer = $"../.."
@onready var video_popup: PanelContainer = $"../../../VideoPopup"
@onready var controls_popup: PanelContainer = $"../../../ControlsPopup"
@onready var audio_popup: PanelContainer = $"../../../AudioPopup"

@onready var start: Button = $"../../../MenuItems/Start"
@onready var settings: Button = $"../../../MenuItems/Settings"
@onready var quit: Button = $"../../../MenuItems/Quit"


func _on_mouse_entered() -> void:
	selectHoverSFX.play()


func _on_pressed() -> void:
	selectClickSFX.play()
	start.hide()
	settings.hide()
	quit.hide()
	
	audio_popup.hide()
	controls_popup.show()
	settings_popup.hide()
	video_popup.hide()
