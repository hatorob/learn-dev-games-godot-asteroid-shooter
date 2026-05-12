extends Area2D

@export var speed_laser: float
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += speed_laser * delta
