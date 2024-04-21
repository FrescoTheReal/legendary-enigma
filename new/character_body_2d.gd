extends CharacterBody2D


const SPEED = 300.0



func _physics_process(delta):
	var movement = Vector2()
	movement.x = Input.get_axis("ui_left", "ui_right")
	movement.y = Input.get_axis("ui_up", "ui_down")
	movement = movement.normalized()
	if movement.length() > 0:
		$RayCast2D.target_position = movement * 32
	
	
	
	
	velocity = movement * SPEED
	move_and_slide()
	

func get_direction_as_string():
	var dir = $RayCast2D.target_position
	if dir.x > 0:
		return "destra"
	elif dir.x < 0:
		return "sinistra"
	if dir.y > 0:
		return "giù"
	elif dir.y < 0:
		return "su"
			

@onready var sprite2D = get_node("AnimatedSprite2D")

@onready var raycast2D = get_node("RayCast2D")


	
	


