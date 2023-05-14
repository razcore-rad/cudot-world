extends Node3D


const TWEEN_DURATION := 6.0

@onready var tween := create_tween().set_loops()

@onready var camera_pivot: Node3D = $Scene/CameraPivot


func _ready() -> void:
	tween.tween_property(camera_pivot, "rotation:y", PI / 4.0, TWEEN_DURATION)
	tween.tween_property(camera_pivot, "rotation:y", -PI / 4.0, TWEEN_DURATION)
