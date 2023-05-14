shader_type spatial;


#include "cudot_uniforms.gdshaderinc"
#include "cudot_functions.gdshaderinc"


void fragment() {
	#include "cudot_fragment_body.gdshaderinc"
}