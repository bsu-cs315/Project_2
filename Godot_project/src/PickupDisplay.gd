extends Node2D

var _collected_pickups := 0
var _max_pickups := 0

func _ready():
	var pickups = get_tree().get_nodes_in_group("Pickups")
	_max_pickups = pickups.size()
	_update_pickup_label()


func _update_pickup_label():
	$Label.text = str(_collected_pickups) + "/" + str(_max_pickups)


func _on_pickup_collected():
	_collected_pickups+=1
	_update_pickup_label()
	if(_collected_pickups >= _max_pickups):
		get_tree().change_scene("res://src/MainMenu.tscn")
