extends Node


const AABB_SIZE := "aabb_size"


func _ready() -> void:
	CudotUtils.set_shaders_aabb_size(get_viewport())
