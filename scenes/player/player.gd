extends CharacterBody2D
@export var speed_player: float
@export var laser_scene: PackedScene

# Método _physics_process que esta sincronizado con las físicas del motor, se ejecuta que se procesa colisiones físicas, movimientos, etc.
# Físicas
# Movimientos de cuerpos físicos (CharacterBody2D, RigidBody2D)
# Por defecto se ejecuta 60 veces por segundo y por intervalos fijos
func _physics_process(delta):
	if Input.is_action_just_pressed("shoot"):
		create_laser()
	process_inputs()
	# mueve al cuerpo basado en su propiedad velocity
	move_and_slide()
	
func  process_inputs():
	var y_input = Input.get_axis("move_up","move_down")
	var x_input = Input.get_axis("move_left","move_right")
	velocity = Vector2(x_input, y_input) * speed_player

func create_laser():
	var laser_instance = laser_scene.instantiate()
	laser_instance.global_position = global_position
	add_sibling(laser_instance)


func _on_detection_area_area_entered(area):
	if area.is_in_group("asteroids"):
		queue_free()
