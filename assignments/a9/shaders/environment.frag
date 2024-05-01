#version 330 core

#define specular_power 20.
#define specular_intensity 10.
/*default camera matrices. do not modify.*/
layout(std140) uniform camera
{
    mat4 projection;	/*camera's projection matrix*/
    mat4 view;			/*camera's view matrix*/
    mat4 pvm;			/*camera's projection*view*model matrix*/
    mat4 ortho;			/*camera's ortho projection matrix*/
    vec4 position;		/*camera's position in world space*/
};

/* set light ubo. do not modify.*/
struct light
{
	ivec4 att; 
	vec4 pos; // position
	vec4 dir;
	vec4 amb; // ambient intensity
	vec4 dif; // diffuse intensity
	vec4 spec; // specular intensity
	vec4 atten;
	vec4 r;
};
layout(std140) uniform lights
{
	vec4 amb;
	ivec4 lt_att; // lt_att[0] = number of lights
	light lt[4];
};

uniform samplerCube skybox;

/*input variables*/
in vec3 vtx_normal; // vtx normal in world space
in vec3 vtx_position; // vtx position in world space
in vec3 vtx_model_position; // vtx position in model space
in vec4 vtx_color;
in vec2 vtx_uv;
in vec3 vtx_tangent;

/*output variables*/
out vec4 frag_color;

void main()
{
    //vec3 color = shading_texture_with_checkerboard();
    vec3 I = normalize(position.xyz - vtx_position);
    vec3 R = reflect(I, normalize(vtx_normal));
    vec3 color = texture(skybox, vec3(R.x, -R.y, -R.z)).rgb;
    frag_color = vec4(color, 1.0);

	// extending the ray tracing algorithm by implementing specular reflection

	// vector V is the difference of the model and world position
	vec3 V = normalize(vtx_position-vtx_model_position);

	// calculate specular component
	// n = 20, which determines how hard/shiny the reflection will be on the rocks
	float specular = pow(dot(R, V), specular_power) * specular_intensity;

	// making a custom diffuse color based on the color of the noise terrain
	vec3 new_color = frag_color.rgb + specular * vec3(0.1059, 0.8941, 0.8941);

	frag_color = vec4(new_color, 1.0);
}