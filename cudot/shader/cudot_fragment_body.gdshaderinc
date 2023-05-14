vec3 color = mix(base_color, random_color, textureProj(random_color_noise, NODE_POSITION_WORLD).xyz * random_color_strength);

float gradient = pow(length(UV - 0.5), 1.5);
color = mix(color, gradient_color, gradient);

float fresnel = get_fresnel(NORMAL, VIEW);
color = mix(color, fresnel_color, fresnel);

vec3 generated_coordinates = get_generated_coordinates(INV_VIEW_MATRIX, NODE_POSITION_WORLD, VERTEX);
color = mix(color, gradient_bottom_color, (1.0 - generated_coordinates.y) * gradient_bottom_strength);

vec3 fake_specular = texture(fake_specular_texture, reflect(NORMAL, VIEW).xy).xyz;
color = mix(color, fake_specular_color, fake_specular * fake_specular_strength);

ALBEDO = color;
EMISSION = color * emission_strength;
BACKLIGHT = backlight;