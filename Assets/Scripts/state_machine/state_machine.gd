class_name StateMachine extends Node


var active_state: State
func _ready() -> void:
	for child_state: State in get_children():
		child_state.switch_state.connect(change_state)
func _process(delta: float) -> void:
	print("StateMachine: " + str(active_state))	
	if active_state:
		active_state.update(delta)
		
func physics_process(delta: float) -> void:
	if active_state:
		active_state.physics_update(delta)

func change_state(new_state: State) -> void:
		if new_state == active_state:
			return
		if active_state:
			active_state.exit_state()	
		
		active_state = new_state
		
		if active_state:
			active_state.enter_state()
