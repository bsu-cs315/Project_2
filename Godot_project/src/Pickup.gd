extends Area2D


func _on_Pickup_body_entered(body):
	queue_free()
