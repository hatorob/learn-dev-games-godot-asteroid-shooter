extends Area2D

var speed = 250

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("Posición en x ")
	#print(position.x)
	#print("Valor delta ")
	#print(delta)
	# el delta es el tiempo en pixeles por segundo (delta time)
	position.x -= speed * delta
