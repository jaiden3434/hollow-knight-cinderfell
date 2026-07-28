extends Button

@export var selectHoverSFX : AudioStreamPlayer
@export var selectClickSFX : AudioStreamPlayer

@export var menuItems : FlowContainer
@export var settingsPopup : PanelContainer
@export var videoPopup : PanelContainer
@export var controlsPopup : PanelContainer

@export var start : Button
@export var settings : Button
@export var quit : Button

func _on_mouse_entered() -> void:
	selectHoverSFX.play


func _on_pressed() -> void:
	selectClickSFX.play
	videoPopup.hide()
	controlsPopup.hide()
	settingsPopup.hide() 
	menuItems.show()
	start.show()
	settings.show()
	quit.show()
