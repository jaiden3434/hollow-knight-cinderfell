extends Node

var firstLaunch : bool = false

#------------------------------
## Player configs
# NOTE: Theres probably a better way to do this, but for me, this makes the most sense. 
# These can be configured at runtime to dictate behaviors.
var canJump: bool = true
var canDash: bool = true
var canMove: bool = true
var canAttack: bool = true

## Player stats
