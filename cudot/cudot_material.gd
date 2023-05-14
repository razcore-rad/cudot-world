@tool
class_name CudotMaterial extends ShaderMaterial


func _init() -> void:
	shader = preload("shader/cudot.gdshader")
	set_shader_parameter("random_color_noise", preload("noise/cudot_random_color_noise.tres"))
	set_shader_parameter("fake_specular_texture", preload("res://cudot/noise/cudot_fake_specular_texture.tres"))
