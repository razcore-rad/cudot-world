#define VEC3_ZERO vec3(0.0)
#define VEC3_ONE vec3(1.0)


uniform vec3 aabb_size = VEC3_ZERO;

uniform vec3 base_color: source_color = VEC3_ONE;

uniform vec3 random_color: source_color = VEC3_ZERO;
uniform sampler2D random_color_noise: hint_default_black;
uniform float random_color_strength: hint_range(0.0, 1.0, 0.1) = 0.0;

uniform vec3 gradient_color: source_color = VEC3_ZERO;
uniform vec3 gradient_bottom_color: source_color = VEC3_ZERO;
uniform float gradient_bottom_strength: hint_range(0.0, 1.0, 0.1) = 1.0;

uniform vec3 fake_specular_color: source_color = VEC3_ONE;
uniform sampler2D fake_specular_texture: hint_default_black;
uniform float fake_specular_strength: hint_range(0.0, 1.0, 0.1) = 0.0;

uniform vec3 fresnel_color: source_color = VEC3_ONE;
uniform float fresnel_power = 1.0;
uniform float fresnel_strength = 0.0;

uniform float emission_strength = 0.0;

uniform vec3 backlight: source_color = VEC3_ZERO;