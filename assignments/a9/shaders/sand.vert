#version 330 core

layout(std140) uniform camera
{
    mat4 projection;
    mat4 view;
    mat4 pvm;
    mat4 ortho;
    vec4 position;
};

float hash(vec2 v)
{
	return fract(sin(dot(v, vec2(12.9898, 78.233))) * 43758.5453);
}

float height(vec2 v)
{
    float h = 0;
	// Your implementation starts here
    h = .01 * hash(v);
    if(h < 0)
        h *= .5;
	// Your implementation ends here
    return h * 1.5;
}

uniform mat4 model;		/*model matrix*/

/*input variables*/
layout(location = 0) in vec4 pos;

/*output variables*/
out vec3 vtx_pos;		////vertex position in the world space

void main()
{
    vtx_pos = pos.xyz;
    vtx_pos.z = height(pos.xy);

    gl_Position = pvm * model * vec4(vtx_pos, 1.);
}