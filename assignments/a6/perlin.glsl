#define Terrain 1		/* Uncomment this macro for Step II */

struct Light 
{
    vec3 position;          /* light position */
    vec3 Ia;                /* ambient intensity */
    vec3 Id;                /* diffuse intensity */
    vec3 Is;                /* specular intensity */     
};

uniform vec3 ka;            /* object material ambient */
uniform vec3 kd;            /* object material diffuse */
uniform vec3 ks;            /* object material specular */
uniform float shininess;    /* object material shininess */

/////////////////////////////////////////////////////
//// Step 1 - Part 1: Hash function
//// In this function, you will create a function that takes in an xy coordinate and returns a 'random' 2d vector.
//// You are asked to implement your own version by combining different GLSL built-in functions to produce the result.
//// You are allowed to leverage the reference Hash() implementation online (but you need to put the source link in comments). 
//// We also provide a default implementation of Hash() to obtain the image results shown in the assignments. 
//// You implementation does not need to match the reference results.
/////////////////////////////////////////////////////

vec2 hash2(vec2 v)
{
	vec2 rand = vec2(0,0);
	
	/* Your implementation starts */

	// Provided defulat implementation
	rand  = 52.5 * fract(sin(dot(v.yx * 0.31, vec2(0.2, 0.83))) + vec2(0.43, 0.723));
    rand = -1.0 + 3.1 * fract(rand.x * rand.y * rand.yx);
	
	/* Your implementation ends */

	return rand;
}

/////////////////////////////////////////////////////
//// Step 1 - Part 2: Perlin Noise
//// In this function, you will implement the Perlin noise with a single octave.
//// The input is a 2D position p. We calculate the grid cell index i and fraction f. 
//// You will use i and f to compute the Perlin noise at point p and return it as noise.
/////////////////////////////////////////////////////

float perlin_noise(vec2 p) 
{
    float noise = 0.0;
	vec2 i = floor(p);
    vec2 f = fract(p);
	
	/* Your implementation starts */
    
	// smooth step
	vec2 s = f * f * (3. - 2. * f);

	// noise values (gradients) at surrounding grid nodes
	vec2 g00 = hash2(i);
	vec2 g10 = hash2(i + vec2(1, 0));
	vec2 g01 = hash2(i + vec2(0, 1));
	vec2 g11 = hash2(i + vec2(1, 1));

	// offset vectors for surrounding grid nodes
	vec2 f00 = f - vec2(0, 0);
	vec2 f10 = f - vec2(1, 0);
	vec2 f01 = f - vec2(0, 1);
	vec2 f11 = f - vec2(1, 1);

	// dot products of noise and offset for surrounding grid nodes
	float v00 = dot(f00, g00);
	float v10 = dot(f10, g10);
	float v01 = dot(f01, g01);
	float v11 = dot(f11, g11);

	// bi-smoothed interpolation of noise
	float u0 = (1 - s.x) * v00 + s.x * v10;
	float u1 = (1 - s.x) * v01 + s.x * v11;

	noise = (1 - s.y) * u0 + s.y * u1;

	/* Your implementation ends */
	
	return noise;
}

/////////////////////////////////////////////////////
//// Step 1 - Part 3: Octave synthesis
//// In this function, you will synthesize the noise octave by invoking the perlin_noise function, which should be implemented in the previous step. 
//// Given a point p and an octave number num, the task is to compute the Perlin noise octave by accumulating the contributions from each frequency level. 
//// At each level, the amplitude should be halved, while the frequency should be doubled. 
//// The octave number num must be greater than 0.
/////////////////////////////////////////////////////

float noise_octave(vec2 p, int num)
{
	float sum = 0;
	
	/* Your implementation starts */

	for (int i = 0; i < num; i++) {
		sum += pow(2, -i) * perlin_noise(pow(2, i) * p); // 1/2^i * perlin(2^i * p)
	}
	
	/* Your implementation ends */
	
	return sum;
}

/////////////////////////////////////////////////////
//// Step 2 - Part 1: Calculate vertex height
//// Create a function that takes in a 2D point and returns its height using the noise_octave() funciton you have implemented.
//// There is no standard answer for this part. Think about what functions will create what shapes.
//// If you want steep mountains with flat tops, use a function like sqrt(noise_octave(v,num)). 
//// If you want jagged mountains, use a function like e^(noise_octave(v,num)).
//// You can also add functions on top of each other and change the frequency of the noise by multiplying v by some value other than 1.
//// In the starter code, we provide our default implementation for your reference.
/////////////////////////////////////////////////////

float height(vec2 v)
{
    float h = 0;
	
	/* Your implementation starts */
	
	// Provided default implementation
	h = 1.5 * sqrt(abs(noise_octave(v * 0.8, 10))) - 0.75;
	if(h < 0) h = 0.01 * abs(noise_octave(10 * v, 5));
	
	/* Your implementation ends */
	
	return h;
}

/////////////////////////////////////////////////////
//// Step 2 - Part 2: Compute normal for a given 2D point using its height specified by noise function
//// In this function, you are asked to create a function that takes in a 2D point and returns its normal
//// You need to compute the normal vector at p by find the points d to the left/right and d forward/backward, and then use a cross product to calculate the normal vector. 
//// Be sure to normalize the result after you calculate the cross product.
//// This function will be called in shading_terrain to calculate the normal vector to be used in the shading model.
/////////////////////////////////////////////////////

vec3 compute_normal(vec2 v, float d)
{	
	vec3 normal_vector = vec3(0,0,0);
	
	/* Your implementation starts */

	vec3 v1 = vec3(v.x + d, v.y, height(vec2(v.x + d, v.y)));
	vec3 v2 = vec3(v.x - d, v.y, height(vec2(v.x - d, v.y)));
	vec3 v3 = vec3(v.x, v.y + d, height(vec2(v.x, v.y + d)));
	vec3 v4 = vec3(v.x, v.y - d, height(vec2(v.x, v.y - d)));

	normal_vector = normalize(cross(v1 - v2, v3 - v4));

	/* Your implementation ends */
	
	return normal_vector;
}

/////////////////////////////////////////////////////
//// Step 2 - Part 3: Phong shading
//// In this function, you will implement the Phong shading model to be used to shade your mountain.
//// It is the standard version we have practiced in our previous assignments, and you are allowed to 
//// reuse the code you have implemented previously.
/////////////////////////////////////////////////////

/////////////////////////////////////////////////////
//// Input variables for shading_phong
/////////////////////////////////////////////////////
//// light: the light struct
//// e: eye position
//// p: position of the point
//// s: light source position (you may also use light.position)
//// n: normal at the point
/////////////////////////////////////////////////////

vec4 shading_phong(Light light, vec3 e, vec3 p, vec3 s, vec3 n) 
{
	vec4 color=vec4(0.0,0.0,0.0,1.0);
	
    /* your implementation starts */
    
    vec3 Ia = light.Ia;
    vec4 ambient = vec4(ka * Ia, 1.);
    
    vec3 l = normalize(s - p);
    vec3 Id = light.Id;
    vec4 lambertian = vec4(kd * Id * max(0, dot(l, n)), 1.);

    vec3 Is = light.Is;
    vec3 v = normalize(e - p);
    vec3 r = normalize(reflect(p - s, n));
    vec4 phong = vec4(ks * Is * pow(max(0, dot(v, r)), shininess), 1.);
    
    color = ambient + lambertian + phong;

	/* your implementation ends */
	
	return color;
}

//// shade the noise function 
vec3 shading_noise(vec3 p) 
{
	float h = 0.5 + 0.5 * (noise_octave(p.xy, 2));
	return vec3(h, h, h);
}

/////////////////////////////////////////////////////
//// Step 2 - Part 4: Shade the terrain
//// In this function, you will calculate the emissive color of each input position
//// We provide a default implementation that is commented out by default
//// You are asked to implement your own version to calculate natural colors for your customized scene
/////////////////////////////////////////////////////

vec3 shading_terrain(vec3 pos) 
{
	const Light light = Light(vec3(7,-1, 6), vec3(5, 3, 3), vec3(1, 1, 1), vec3(1, 1, 1));

	//// calculate Phong shading color with normal
	
	vec3 n = compute_normal(pos.xy, 0.01);
	vec3 e = position.xyz;
	vec3 p = pos.xyz;
	vec3 s = light.position;
	vec3 phong_color = shading_phong(light, e, p, s, n).xyz;

	//// calculate emissive color
	vec3 emissive_color = vec3(0.0,0.0,0.0);
	
	/* your implementation starts */
	
	// Provided default implementation
	float h = pos.z;
	// h = clamp(h, 0.0, 1.0);

	vec3 top = vec3(.10,.18,.20);
	vec3 green = vec3(.14,.22,.14);
	vec3 tan = vec3(.58,.56,.54);
	vec3 fog = vec3(.63, .7, .7);
	vec3 water = vec3(.30,.55,.68);

	if (h > 0.2) {
		emissive_color = mix(green, top, (h - 0.2) / 0.25);
	} else if (h > 0.08) {
		emissive_color = mix(tan, green, (h - 0.08) / (0.2 - 0.08));
	} else if (h > 0.01 * abs(noise_octave(10 * pos.xy, 5)) + 0.005) {
		emissive_color = mix(fog, tan, (h - (0.01 * abs(noise_octave(10 * pos.xy, 5)) + 0.005)) 
		/ (0.08 - (0.01 * abs(noise_octave(10 * pos.xy, 5)) + 0.005)));
	} else {
		emissive_color = water;
	}
	

	/* your implementation ends */

	return phong_color * emissive_color;
}