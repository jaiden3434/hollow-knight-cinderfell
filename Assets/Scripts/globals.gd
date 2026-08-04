extends Node

## Game
@export_group("Game")

## Sets whether this is the first time launching the game, used to play the intro scene if needed.
@export var firstLaunch : bool

## Player
#------------------------------
@export_group("Player")
@export_subgroup("Toggleables")
# NOTE: Theres probably a better way to do this, but for me, this makes the most sense. 
# These can be configured at runtime to dictate behaviors.
## Sets whether player can jump
@export var canJump: bool = true
## Sets whether player can dash
@export var canDash: bool = true
## Sets whether player can move
@export var canMove: bool = true
## Sets whether player can attack
@export var canAttack: bool = true
## Disables dynamic horizontal camera movement. 
@export var dyanmicCamera: bool = true

@export_subgroup("Stats")
## The speed at which the player moves, not be confused with how fast jump or dash, as that is seperate.
@export var playerSpeed: float = 500.0
## How much damage the player inflicts on other enemies.
@export var attackDamage: float = 2.0
## The speed at which the player dashes.
@export var dashSpeed: float  = 700.0
## The height at which the player jumps.
@export var jumpHeight: float = 700.0
## Dictates how much faster the player falls then rises
@export var fallMultiplier: float = 1.15
## Direction player is moving. 1 being left, -1 being right
@export var playerDirection: int = 1
## How much attacking alone moves the player backwards, not to be confused with attack knockback.
@export var attackRecoil: float = 15.0
## Current player health
@export var playerHealth: float = 5.0
## Max player health
@export var maxPlayerHealth: float = 5.0
#------------------------------
## Player internal checks
var hasCoyoteJumped : bool = false
var hasDashed : bool = false
var isDashing : bool = false
var isRunning : bool = false

func _process(delta: float) -> void:
	## NOTE: THIS IS NOT FOR STANDARD LOGIC. USE ONLY FOR CLAMPING CERTAIN VALUES.
	playerHealth = clampf(playerHealth, 0.0, maxPlayerHealth)
