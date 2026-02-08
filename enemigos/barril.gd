class_name Barril
extends RigidBody2D

@export var demasiado_abajo = 1000

@onready var sonido_choque = $SonidoChoque 
@onready var colision = $CollisionShape2D

func _process(delta):
	if position.y > demasiado_abajo:
		queue_free()

func _on_body_entered(body):
	if body is Personaje:
		print("Jugador herido")
		
		if body.has_method("damage_received"):
			body.damage_received()
		
		sonido_choque.play()
		
		hide()
		
		colision.set_deferred("disabled", true) 
		set_deferred("freeze", true)
		
		await sonido_choque.finished
		
		queue_free()
