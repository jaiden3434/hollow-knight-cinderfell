extends Control

var firstLaunch = Globals.firstLaunch

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if firstLaunch == true:
		get_tree().change_scene_to_file("res://Scenes/intro.tscn")
