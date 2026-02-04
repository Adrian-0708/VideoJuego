class_name Barril
extends RigidBody2D

@export var demasiado_abajo = 1000

func _process(delta):
	if position.y > demasiado_abajo:
		queue_free()

func _on_body_entered(body):
	if body is Personaje:
		print("Jugador herido")
		
		# 1. Aplicamos el daño primero
		if body.has_method("damage_received"):
			body.damage_received()
		# 2. Eliminamos el barril de la escena
		queue_free()
