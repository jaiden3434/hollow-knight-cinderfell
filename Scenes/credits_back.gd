extends Button


@onready var select_hover: AudioStreamPlayer = $"../../SelectHover"
@onready var select_click: AudioStreamPlayer = $"../../SelectClick"
@onready var fade: AnimationPlayer = $"../../Fade"
@onready var menu_items: FlowContainer = $"../../MenuItems"
@onready var credits_popup: PanelContainer = $".."



func _on_mouse_entered() -> void:
	select_hover.play()
	select_click.pitch_scale = randf_range(0.8, 1.0)


func _on_pressed() -> void:
	select_click.play()
