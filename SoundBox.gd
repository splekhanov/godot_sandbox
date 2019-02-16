extends Node2D

signal pickup

func _ready():
	add_to_group("world")
	hide()

func _on_Area2D_area_entered(area):
	emit_signal("pickup")
	queue_free()
