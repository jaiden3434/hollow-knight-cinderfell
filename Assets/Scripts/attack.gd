extends State

@onready var attack_hitbox: Area2D = $"../../attack hitbox"
@onready var attack_hitbox_2: Area2D = $"../../attack hitbox2"

func enter_state() -> void:
		if Globals.playerDirection == -1:
			$"attack hitbox".hide()
			$"Attack Hitbox right".hide()
			$"attack hitbox2".show()
			$"Attack Hitbox left".show()
		elif Globals.playerDirection == 1:
			$"attack hitbox".show()
			$"Attack Hitbox right".show()
			$"attack hitbox2".hide()
			$"Attack Hitbox left".hide()
			




func _on_attack_hitbox_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if body.has_method("take_damage"):
			body.take_damage()
			print(str(body) + "took" + str(Globals.attackDamage))

func _on_attack_hitbox_2_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
