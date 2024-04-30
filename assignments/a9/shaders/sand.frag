#version 330 core

layout (std140) uniform camera
{
	mat4 projection;
	mat4 view;
	mat4 pvm;
	mat4 ortho;
	vec4 position;
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

uniform float iTime;
uniform mat4 model;		/*model matrix*/

in vec3 vtx_pos;

out vec4 frag_color;


uniform vec3 ka;            /* object material ambient */
uniform vec3 kd;            /* object material diffuse */
uniform vec3 ks;            /* object material specular */
uniform float shininess;    /* object material shininess */

float hash(vec2 v)
{
	//return fract(sin(dot(v, vec2(12.9898, 78.233))) * 43758.5453);
	return fract((dot(v, vec2(6.5898, 7.533))) * 2.5);
	//return fract((dot(v, vec2(17500, 1.))) * 2.5);
}

void main()
{
	float rand_value = hash(vtx_pos.xy);
	vec3 rand_vec = vec3(rand_value); 

	float h = vtx_pos.z + .2;
	h = clamp(h, 2.5, 2.5);
	//vec3 emissiveColor = mix(vec3(.129, .378, .323), vec3(.113, .337, .339), h);
	vec3 emissiveColor = mix(vec3(.45, .0967, .00969), vec3(0, .22, .22), h);
    frag_color = vec4((rand_vec + emissiveColor), 1.0);
}
