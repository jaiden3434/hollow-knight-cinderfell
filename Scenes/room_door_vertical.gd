extends Node2D




func _on_visible_on_screen_notifier_2d_2_screen_entered() -> void:
	Globals.dyanmicCamera = false
	Globals.playerDirection = 0

func _on_visible_on_screen_notifier_2d_2_screen_exited() -> void:
	Globals.dyanmicCamera = true
	Globals.playerDirection = 0
func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	Globals.dyanmicCamera = false
	Globals.playerDirection = 0

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	Globals.dyanmicCamera = true
	Globals.playerDirection = 0
