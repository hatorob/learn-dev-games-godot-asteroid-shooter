extends CharacterBody2D
@export var speed_player: float

# Método _physics_process que esta sincronizado con las físicas del motor, se ejecuta que se procesa colisiones físicas, movimientos, etc.
# Físicas
# Movimientos de cuerpos físicos (CharacterBody2D, RigidBody2D)
# Por defecto se ejecuta 60 veces por segundo y por intervalos fijos
func _physics_process(delta):
	var y_input = Input.get_axis("move_up","move_down")
	var x_input = Input.get_axis("move_left","move_right")
	# print(y_input)
	# print(x_input)
	# La manera traficional
	#velocity.y = y_input * speed_player
	#velocity.x = x_input * speed_player
	# la manera de unirla en una sola linea
	velocity = Vector2(x_input, y_input) * speed_player
	# mueve al cuerpo basado en su propiedad velocity
	move_and_slide()
