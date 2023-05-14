shader_type spatial;


#include "cudot_uniforms.gdshaderinc"
#include "cudot_functions.gdshaderinc"

uniform float alpha: hint_range(0.0, 1.0, 0.1) = 0.5;


void fragment() {
	ALPHA = alpha;
	#include "cudot_fragment_body.gdshaderinc"
}