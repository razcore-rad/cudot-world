vec3 get_generated_coordinates(mat4 inv_view_matrix, vec3 node_position_world, vec3 vertex) {
	if (any(equal(aabb_size, vec3(0.0)))) {
		return vec3(1.0);
	}
	return ((inv_view_matrix * vec4(vertex, 1.0)).xyz - node_position_world) / aabb_size;
}


float get_fresnel(vec3 normal, vec3 view) {
	return smoothstep(0.0, 1.0, pow(1.0 - dot(normal, view), fresnel_power) * fresnel_strength);
}