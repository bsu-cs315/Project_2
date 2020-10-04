extends Area2D

signal _pickup_collected

func _on_Pickup_body_entered(body):
	emit_signal("_pickup_collected")
	queue_free()
