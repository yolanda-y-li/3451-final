//#####################################################################
// Main
// CS3451 Computer Graphics Starter Code
// Contact: Bo Zhu (bo.zhu@gatech.edu)
//#####################################################################
#include <iostream>
#include <random>

#include "OpenGLMesh.h"
#include "OpenGLCommon.h"
#include "OpenGLWindow.h"
#include "OpenGLViewer.h"

/////////////////////////////////////////////////////////////////////
//// TODO: put your name in the string               
/////////////////////////////////////////////////////////////////////

const std::string author="Yolanda Li";

/////////////////////////////////////////////////////////////////////
//// These are helper functions we created to generate circles and triangles by testing whether a point is inside the shape or not.
//// They can be used in the paintGrid function as "if the pixel is inside, draw some color; else skip."
//// You may create your own functions to draw your own shapes

//// The paintGrid function is implemented as a GLSL fragment shader. 
//// The GLSL grammar is C-style, and if you are curious about its full picture (which we will start to learn the details in Week 3), 
//// you may find more information on https://www.khronos.org/files/opengl43-quick-reference-card.pdf (Page 6 - 7 would probably be helpful!)
//// You don't need advanced GLSL features for this assignment (reading the starter code should be enough).
//// You can also test it (copy the whole string) in Shadertoy: https://www.shadertoy.com/new    
/////////////////////////////////////////////////////////////////////

const std::string draw_pixels=To_String(
const float M_PI=3.1415926535; 

// The side length of the minimum unit (or the new "pixels")
const float PIXEL_SIZE=10.; 

// To check if a point is inside a circle
bool inCircle(vec2 p, vec2 center, float radius) {
	vec2 to_center=p - center;
	if (dot(to_center, to_center) < radius * radius) {
		return true;
	}
	return false;
}

// To check if a point is inside a triangle
bool inTriangle(vec2 p, vec2 p1, vec2 p2, vec2 p3) {
	if (dot(cross(vec3(p2 - p1, 0), vec3(p - p1, 0)), cross(vec3(p2 - p1, 0), vec3(p3 - p1, 0))) >= 0. &&
		dot(cross(vec3(p3 - p2, 0), vec3(p - p2, 0)), cross(vec3(p3 - p2, 0), vec3(p1 - p2, 0))) >= 0. &&
		dot(cross(vec3(p1 - p3, 0), vec3(p - p3, 0)), cross(vec3(p1 - p3, 0), vec3(p2 - p3, 0))) >= 0.) {
		return true;
	}
	return false;
}

// To check if a point is inside a convex quadrilateral
// didn't really end up using much
bool inConvexQuad(vec2 p, vec2 p1, vec2 p2, vec2 p3, vec2 p4) {
	if (dot(cross(vec3(p2 - p1, 0), vec3(p - p1, 0)), cross(vec3(p2 - p1, 0), vec3(p3 - p1, 0))) >= 0. &&
		dot(cross(vec3(p3 - p2, 0), vec3(p - p2, 0)), cross(vec3(p3 - p2, 0), vec3(p1 - p2, 0))) >= 0. &&
		dot(cross(vec3(p4 - p3, 0), vec3(p - p3, 0)), cross(vec3(p4 - p3, 0), vec3(p2 - p3, 0))) >= 0. &&
		dot(cross(vec3(p1 - p4, 0), vec3(p - p4, 0)), cross(vec3(p1 - p4, 0), vec3(p2 - p4, 0))) >= 0.) {
		return true;
	}
	return false;
}

// To convert from Polar Coordinates to Cartesian coordinates
vec2 polar2cart(float angle, float length) {
	return vec2(cos(angle) * length, sin(angle) * length);
}

/////////////////////////////////////////////////////////////////////////
// Feel free to add more functions if needed!                          
/////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////
// TODO: replace the code below with your own code                 //
// Useful variables:											   //
// iTime: the passed seconds from the start of the program         //
// iResolution: the size of the window (default: 1280*960)         //
/////////////////////////////////////////////////////////////////////

// Return the rgba color of the grid at position (x, y) 
vec4 paintGrid(float x, float y) {
	vec2 center = vec2(iResolution / PIXEL_SIZE / 2.); // window center

	// center of flower
	vec2 flowerCircle = vec2(0, 10) + center;

	float rotation = M_PI / 3.;

	float speed = -2 * sin(4 * iTime) + 8 * iTime;
	float add2 = M_PI / 6.;
	float add3 = 3. * M_PI / 7.;

	// red petal
	vec2 red1 = polar2cart(speed, 6) + flowerCircle;
	vec2 red2 = polar2cart(speed - add2, 10) + flowerCircle;
	vec2 red3 = polar2cart(speed - add3, 20) + flowerCircle;

	// green petal
	vec2 green1 = polar2cart(speed - rotation, 6) + flowerCircle;
	vec2 green2 = polar2cart(speed - add2 - rotation, 10) + flowerCircle;
	vec2 green3 = polar2cart(speed - add3 - rotation, 20) + flowerCircle;

	// blue petal
	vec2 blue1 = polar2cart(speed - 2 * rotation, 6) + flowerCircle;
	vec2 blue2 = polar2cart(speed - add2 - 2 * rotation, 10) + flowerCircle;
	vec2 blue3 = polar2cart(speed - add3 - 2 * rotation, 20) + flowerCircle;

	// yellow petal
	vec2 yellow1 = polar2cart(speed - 3 * rotation, 6) + flowerCircle;
	vec2 yellow2 = polar2cart(speed - add2 - 3 * rotation, 10) + flowerCircle;
	vec2 yellow3 = polar2cart(speed - add3 - 3 * rotation, 20) + flowerCircle;

	// orange petal
	vec2 orange1 = polar2cart(speed - 4 * rotation, 6) + flowerCircle;
	vec2 orange2 = polar2cart(speed - add2 - 4 * rotation, 10) + flowerCircle;
	vec2 orange3 = polar2cart(speed - add3 - 4 * rotation, 20) + flowerCircle;

	// pink petal
	vec2 pink1 = polar2cart(speed - 5 * rotation, 6) + flowerCircle;
	vec2 pink2 = polar2cart(speed - add2 - 5 * rotation, 10) + flowerCircle;
	vec2 pink3 = polar2cart(speed - add3 - 5 * rotation, 20) + flowerCircle;

	// stem
	vec2 stem1 = vec2(-1, -40) + flowerCircle;
	vec2 stem2 = vec2(-1, 0) + flowerCircle;
	vec2 stem3 = vec2(1, 0) + flowerCircle;
	vec2 stem4 = vec2(1, -40) + flowerCircle;


	bool inCircle = inCircle(vec2(x, y), flowerCircle, 3.);

	bool inRed1 = inTriangle(vec2(x, y), flowerCircle, red2, red3);
	bool inRed2 = inTriangle(vec2(x, y), flowerCircle, red1, red2);
	bool inGreen1 = inTriangle(vec2(x, y), flowerCircle, green2, green3);
	bool inGreen2 = inTriangle(vec2(x, y), flowerCircle, green1, green2);
	bool inBlue1 = inTriangle(vec2(x, y), flowerCircle, blue2, blue3);
	bool inBlue2 = inTriangle(vec2(x, y), flowerCircle, blue1, blue2);
	bool inYellow1 = inTriangle(vec2(x, y), flowerCircle, yellow2, yellow3);
	bool inYellow2 = inTriangle(vec2(x, y), flowerCircle, yellow1, yellow2);
	bool inOrange1 = inTriangle(vec2(x, y), flowerCircle, orange2, orange3);
	bool inOrange2 = inTriangle(vec2(x, y), flowerCircle, orange1, orange2);
	bool inPink1 = inTriangle(vec2(x, y), flowerCircle, pink2, pink3);
	bool inPink2 = inTriangle(vec2(x, y), flowerCircle, pink1, pink2);

	bool inStem = inConvexQuad(vec2(x, y), stem1, stem2, stem3, stem4);

	if (inCircle) {
		return vec4(1.0);
	} 
	// petals
	else if (inRed2) {
		return vec4(vec3(186, 57, 38) / 255., 1.);
	} else if (inPink1) {
		return vec4(vec3(239, 106, 226) / 255., 1.);
	} else if (inPink2) {
		return vec4(vec3(196, 74, 184) / 255., 1.);
	} else if (inOrange1) {
		return vec4(vec3(235, 148, 65) / 255., 1.);
	} else if (inOrange2) {
		return vec4(vec3(205, 121, 42) / 255., 1.);
	} else if (inYellow1) {
		return vec4(vec3(240, 210, 90) / 255., 1.);
	} else if (inYellow2) {
		return vec4(vec3(193, 167, 64) / 255., 1.);
	} else if (inBlue1) {
		return vec4(vec3(90, 181, 224) / 255., 1.);
	} else if (inBlue2) {
		return vec4(vec3(66, 148, 188) / 255., 1.);
	} else if (inGreen1) {
		return vec4(vec3(140, 206, 109) / 255., 1.);
	} else if (inGreen2) {
		return vec4(vec3(98, 162, 67) / 255., 1.);
	} else if (inRed1) {
		return vec4(vec3(215, 89, 70) / 255., 1.);
	}
	// stem
	else if (inStem) {
		return vec4(vec3(51, 91, 28) / 255., 1.);
	}
	// ground
	else if (y < (stem4.y + 20)) {
		return vec4(vec3(96, 136, 73) / 255., 1.);
	}
	// sky
	else {
		return vec4(vec3(170, 230, 255) / 255., 1.);
	}
}

// The function called in the fragment shader
void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
	// To divide the screen into the grids for painting!
	fragColor=paintGrid(floor(fragCoord.x / PIXEL_SIZE), floor(fragCoord.y / PIXEL_SIZE));
}

);

class ScreenDriver : public OpenGLViewer
{
	OpenGLScreenCover* screen_cover=nullptr;
	clock_t startTime=clock();

public:
	virtual void Initialize()
	{
		OpenGLViewer::Initialize();
	}

	//// Initialize the screen covering mesh and shaders
	virtual void Initialize_Data()
	{
		OpenGLShaderLibrary::Instance()->Create_Screen_Shader(draw_pixels, "shaderToy");
		screen_cover=Add_Interactive_Object<OpenGLScreenCover>();
		Set_Polygon_Mode(screen_cover, PolygonMode::Fill);
		Uniform_Update();

		screen_cover->Set_Data_Refreshed();
		screen_cover->Initialize();
		screen_cover->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("shaderToy"));
	}

	//// Update the uniformed variables used in shader
	void Uniform_Update()
	{
		screen_cover->setResolution((float)Win_Width(), (float)Win_Height());
		screen_cover->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);
	}

	//// Go to next frame 
	virtual void Toggle_Next_Frame()
	{
		Uniform_Update();
		OpenGLViewer::Toggle_Next_Frame();
	}

	////Keyboard interaction
	virtual void Initialize_Common_Callback_Keys()
	{
		OpenGLViewer::Initialize_Common_Callback_Keys();
	}

	virtual void Run()
	{
		OpenGLViewer::Run();
	}
};

int main(int argc,char* argv[])
{
	if(author==""){std::cerr<<"***** The author name is not specified. Please put your name in the author string first. *****"<<std::endl;return 0;}
	else std::cout<<"Assignment 1 demo by "<<author<<" started"<<std::endl;
	
	ScreenDriver driver;
	driver.Initialize();
	driver.Run();	
}

