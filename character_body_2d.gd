extends CharacterBody2D


var SPEED = 300.0
# -600 pt dezavantaj, -900 normal
var JUMP_VELOCITY = -900.0
	 

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 300)

	move_and_slide()

func killPlayer():
	position = %respawn.position

func _ready():
	if Global.speed_upgrade:
		SPEED = 150.0
	if Global.jump_upgrade:
		JUMP_VELOCITY = -600  # Increase jump height
		
		killPlayer()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('jucator'):
		body.killPlayer()


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_area_2d_2_body_exited(body: Node2D) -> void:
	pass # Replace with function body.


func _on_deathzone_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
