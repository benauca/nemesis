extends KinematicBody2D


# Declare member variables here. Examples:
export var velocity:float = 300
var direction: Vector2 = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	direction.x = 0
	direction.y = 0
		
	if(Input.is_action_pressed("ui_right")):
		direction.x += velocity
		get_node("AnimationPlayer").play("IDLE")
	if(Input.is_action_pressed("ui_left")):
		direction.x -= velocity
		get_node("AnimationPlayer").play("IDLE")
	if(Input.is_action_pressed("ui_up")):
		direction.y -= velocity
		get_node("AnimationPlayer").play("UP")
	if(Input.is_action_pressed("ui_down")):
		direction.y += velocity
		get_node("AnimationPlayer").play("DOWN")
	
	move_and_slide(direction)
