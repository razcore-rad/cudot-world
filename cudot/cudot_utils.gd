class_name CudotUtils


const AABB_SIZE := "aabb_size"


static func set_shaders_aabb_size(node: Node) -> void:
	for child in node.find_children("*", "MeshInstance3D"):
		var aabb: AABB = child.mesh.get_aabb()
		for index in range(child.get_surface_override_material_count()):
			var material: ShaderMaterial = child.get_surface_override_material(index)
			if material == null:
				continue
			material.set_shader_parameter(AABB_SIZE, aabb.size)
