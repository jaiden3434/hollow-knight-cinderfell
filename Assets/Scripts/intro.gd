extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.firstLaunch = false
	$AnimationPlayer.play("PoemCharacter")
	await 	$AnimationPlayer.animation_finished
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
