extends Area2D

@export var min_speed: float
@export var max_speed: float
@export var min_degrees: float
@export var max_degrees: float
var random_speed: float
var random_degrees: float
func _ready():
	random_speed = randf_range(min_speed,max_speed)
	random_degrees = randf_range(min_degrees,max_degrees)

func _process(delta):
	position.x -= random_speed * delta
	rotation_degrees += random_degrees * delta

func _on_area_entered(area):
	queue_free()
