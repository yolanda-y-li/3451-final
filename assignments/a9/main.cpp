#include "Common.h"
#include "OpenGLCommon.h"
#include "OpenGLMarkerObjects.h"
#include "OpenGLBgEffect.h"
#include "OpenGLMesh.h"
#include "OpenGLViewer.h"
#include "OpenGLWindow.h"
#include "TinyObjLoader.h"
#include "OpenGLSkybox.h"
#include <algorithm>
#include <iostream>
#include <random>
#include <unordered_set>
#include <vector>
#include <string>

#ifndef __Main_cpp__
#define __Main_cpp__

#ifdef __APPLE__
#define CLOCKS_PER_SEC 100000
#endif

#define DegreesToRadians(degrees) (degrees * M_PI / 180)

class MyDriver : public OpenGLViewer
{
    std::vector<OpenGLTriangleMesh *> mesh_object_array;
    OpenGLBgEffect *bgEffect = nullptr;
    OpenGLSkybox *skybox = nullptr;
    clock_t startTime;

public:
    virtual void Initialize()
    {
        draw_axes = false;
        startTime = clock();
        OpenGLViewer::Initialize();
    }

    virtual void Initialize_Data()
    {
        //// Load all the shaders you need for the scene 
        //// In the function call of Add_Shader_From_File(), we specify three names: 
        //// (1) vertex shader file name
        //// (2) fragment shader file name
        //// (3) shader name used in the shader library
        //// When we bind a shader to an object, we implement it as follows:
        //// object->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("shader_name"));
        //// Here "shader_name" needs to be one of the shader names you created previously with Add_Shader_From_File()

        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/basic.frag", "basic");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/environment.frag", "environment");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/stars.vert", "shaders/stars.frag", "stars");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/basic.vert", "shaders/alphablend.frag", "blend");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/billboard.vert", "shaders/alphablend.frag", "billboard");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/terrain.vert", "shaders/terrain.frag", "terrain");
        OpenGLShaderLibrary::Instance()->Add_Shader_From_File("shaders/skybox.vert", "shaders/skybox.frag", "skybox");

        //// Load all the textures you need for the scene
        //// In the function call of Add_Shader_From_File(), we specify two names:
        //// (1) the texture's file name
        //// (2) the texture used in the texture library
        //// When we bind a texture to an object, we implement it as follows:
        //// object->Add_Texture("tex_sampler", OpenGLTextureLibrary::Get_Texture("tex_name"));
        //// Here "tex_sampler" is the name of the texture sampler2D you used in your shader, and
        //// "tex_name" needs to be one of the texture names you created previously with Add_Texture_From_File()

        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/earth_color.png", "sphere_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/earth_normal.png", "sphere_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/bunny_color.jpg", "bunny_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/bunny_normal.png", "bunny_normal");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/window.png", "window_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/buzz_color.png", "buzz_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/star.png", "star_color");
        // OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/rock_color.jpg", "rock_color");
        // OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/rock_normal.png", "rock_normal");


        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/fish_color.png", "fish_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/fish_normal.png", "fish_normal");

        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/shark_color.png", "shark_color");
        OpenGLTextureLibrary::Instance()->Add_Texture_From_File("tex/shark_normal.png", "shark_normal");

        //// Add all the lights you need for the scene (no more than 4 lights)
        //// The four parameters are position, ambient, diffuse, and specular.
        //// The lights you declared here will be synchronized to all shaders in uniform lights.
        //// You may access these lights using lt[0].pos, lt[1].amb, lt[1].dif, etc.
        //// You can also create your own lights by directly declaring them in a shader without using Add_Light().
        //// Here we declared three default lights for you. Feel free to add/delete/change them at your will.

        opengl_window->Add_Light(Vector3f(3, 1, 3), Vector3f(0.1, 0.1, 0.4), Vector3f(1, 1, 1), Vector3f(0.5, 0.5, 0.5)); 
        opengl_window->Add_Light(Vector3f(0, 8, -5), Vector3f(0.1, 0.2, 0.4), Vector3f(0.9, 0.9, 0.9), Vector3f(0.5, 0.5, 0.5));
        opengl_window->Add_Light(Vector3f(-1, 1, 3), Vector3f(0.1, 0.1, 0.3), Vector3f(0.9, 0.9, 0.9), Vector3f(0.5, 0.5, 0.5));

        //// Add the background / environment
        //// Here we provide you with four default options to create the background of your scene:
        //// (1) Gradient color (like A1 and A2; if you want a simple background, use this one)
        //// (2) Programmable Canvas (like A7 and A8; if you consider implementing noise or particles for the background, use this one)
        //// (3) Sky box (cubemap; if you want to load six background images for a skybox, use this one)
        //// (4) Sky sphere (if you want to implement a sky sphere, enlarge the size of the sphere to make it colver the entire scene and update its shaders for texture colors)
        //// By default, Option (2) (Buzz stars) is turned on, and all the other three are commented out.
        
        //// Background Option (1): Gradient color
        /*
        {
            auto bg = Add_Interactive_Object<OpenGLBackground>();
            bg->Set_Color(OpenGLColor(0.1f, 0.1f, 0.1f, 1.f), OpenGLColor(0.3f, 0.1f, .1f, 1.f));
            bg->Initialize();
        }
        */

        //// Background Option (2): Programmable Canvas
        //// By default, we load a GT buzz + a number of stars
        // {
        //     bgEffect = Add_Interactive_Object<OpenGLBgEffect>();
        //     bgEffect->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("stars"));
        //     bgEffect->Add_Texture("tex_buzz", OpenGLTextureLibrary::Get_Texture("buzz_color")); // bgEffect can also Add_Texture
        //     bgEffect->Initialize();
        // }
        
        //// Background Option (3): Sky box
        //// Here we provide a default implementation of a sky box; customize it for your own sky box
        
        {
            // from https://www.humus.name/index.php?page=Textures
            const std::vector<std::string> cubemap_files{
                "cubemap/uw_lf.jpg",     //// + X
                "cubemap/uw_rt.jpg",     //// - X
                "cubemap/uw_up.jpg",     //// + Y
                "cubemap/uw_dn.jpg",     //// - Y
                "cubemap/uw_ft.jpg",     //// + Z
                "cubemap/uw_bk.jpg",     //// - Z 
            };
            OpenGLTextureLibrary::Instance()->Add_CubeMap_From_Files(cubemap_files, "cube_map");

            skybox = Add_Interactive_Object<OpenGLSkybox>();
            skybox->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("skybox"));
            skybox->Initialize();
        }
        

        //// Background Option (4): Sky sphere
        //// Here we provide a default implementation of a textured sphere; customize it for your own sky sphere
        // {
        //     //// create object by reading an obj mesh
        //     auto sphere = Add_Obj_Mesh_Object("obj/sphere.obj");

        //     //// set object's transform
        //     Matrix4f t;
        //     t << 1, 0, 0, -1.5,
        //         0, 1, 0, -1,
        //         0, 0, 1, 0.5,
        //         0, 0, 0, 1;
        //     sphere->Set_Model_Matrix(t);

        //     //// set object's material
        //     sphere->Set_Ka(Vector3f(0.1, 0.1, 0.1));
        //     sphere->Set_Kd(Vector3f(0.7, 0.7, 0.7));
        //     sphere->Set_Ks(Vector3f(2, 2, 2));
        //     sphere->Set_Shininess(128);

        //     //// bind texture to object
        //     sphere->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("sphere_color"));
        //     sphere->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("sphere_normal"));

        //     //// bind shader to object
        //     sphere->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        // }

        //// Here we load a bunny object with the basic shader to show how to add an object into the scene
        {
            //// create object by reading an obj mesh

            auto shark = Add_Obj_Mesh_Object("obj/new_shark.obj");

            // auto shark = Add_Obj_Mesh_Object("obj/shark.obj");


            //// set object's transform
            Matrix4f t;
            t << 0.5, 0, 0, 1.0,
                0, 0.5, 0, 0,
                0, 0, 0.5, 0,
                0, 0, 0, 1;
            shark->Set_Model_Matrix(t);

            //// set object's material
            shark->Set_Ka(Vector3f(0.1, 0.1, 0.1));

            shark->Set_Kd(Vector3f(0.9, 0.9, 0.9));
            shark->Set_Ks(Vector3f(0.2, 0.2, 0.2));
            shark->Set_Shininess(30);

            //// bind texture to object
            shark->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("shark_color"));
            shark->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("shark_normal"));

            //// bind shader to object
            shark->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        }
        {
            float center_x = 1.0;
            float center_y = 0.0;
            float center_z = 1.0;

            int numFish = 30;

            for (int i = 0; i < numFish; i++) {
                //// create object by reading an obj mesh
                auto fish = Add_Obj_Mesh_Object("obj/fish.obj");
                //// set object's transform
                float angle = -i + 3.1415 / 2 + .5 * hash1d(i);
                Matrix4f t;
				t << cos(angle),  0,  sin(angle), center_x + 5 * cos(i) + 2 * hash1d(i),
                    0,            1., 0,          center_y + 0.3 * i - 3 + 2 * hash1d(i),
                    -sin(angle),  0,  cos(angle), center_z + 5 * sin(i) + 2 * hash1d(i),
                    0,            0,  0,          1;
                fish->Set_Model_Matrix(t);

                //// set object's material
                fish->Set_Ka(Vector3f(0.1, 0.1, 0.1));
                fish->Set_Kd(Vector3f(0.7, 0.7, 0.7));
                fish->Set_Ks(Vector3f(0.5, 0.5, 0.5));
                fish->Set_Shininess(20);

                //// bind texture to object
                fish->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("fish_color"));
                fish->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("fish_normal"));

                //// bind shader to object
                fish->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
            }
        }

        {
            float center_x = 1.0;
            float center_y = 0.0;
            float center_z = 1.0;

            int numFish = 30;

            for (int i = 0; i < numFish; i++) {
                //// create object by reading an obj mesh
                auto fish = Add_Obj_Mesh_Object("obj/fish.obj");
                //// set object's transform
                float angle = -i + 3.1415 / 2 + .5 * hash1d(i);
                Matrix4f t;
				t << cos(angle),  0,  sin(angle), center_x + 8 * cos(i) + 2 * hash1d(i) + 0.5,
                    0,            1., 0,          center_y + 0.5 * i - 5 + 2 * hash1d(i) + 0.5,
                    -sin(angle),  0,  cos(angle), center_z + 8 * sin(i) + 2 * hash1d(i) + 0.5,
                    0,            0,  0,          1;
                fish->Set_Model_Matrix(t);

                //// set object's material
                fish->Set_Ka(Vector3f(0.1, 0.1, 0.1));
                fish->Set_Kd(Vector3f(0.7, 0.7, 0.7));
                fish->Set_Ks(Vector3f(0.5, 0.5, 0.5));
                fish->Set_Shininess(20);

                //// bind texture to object
                fish->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("fish_color"));
                fish->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("fish_normal"));

                //// bind shader to object
                fish->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
            }
        }
            
        // adding a rock
        // {
        //     //// create object by reading an obj mesh
        //     auto rock = Add_Obj_Mesh_Object("obj/rock.obj");

        //     //// set object's transform
        //     Matrix4f t;
        //     t << 0.02, 0, 0, 1.0,
        //         0, 0.02, 0, 0,
        //         0, 0, 0.02, 0,
        //         0, 0, 0, 1;
        //     rock->Set_Model_Matrix(t);

        //     //// set object's material
        //     rock->Set_Ka(Vector3f(0, 0.16, 1.));
        //     rock->Set_Kd(Vector3f(1., 0.1, 0.1));
        //     rock->Set_Ks(Vector3f(2, 2, 2));
        //     rock->Set_Shininess(10);

        //     //// bind texture to object
        //     // rock->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("rock_color"));
        //     // rock->Add_Texture("tex_normal", OpenGLTextureLibrary::Get_Texture("rock_normal"));

        //     //// bind shader to object
        //     rock->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("basic"));
        // }

        //// Here we show an example of adding a mesh with noise-terrain (A6)
        {
            //// create object by reading an obj mesh
            auto terrain = Add_Obj_Mesh_Object("obj/plane.obj");

            //// set object's transform
            Matrix4f r, s, t;
            r << 1, 0, 0, 0,
                0, 0.258, 0.965, 0,
                0, -0.965, 0.258, 0,
                0, 0, 0, 1;
            s << 20, 0, 0,0,
                0, 20, 0, 0,
                0, 0, 20, 0,
                0, 0, 0, 1;
            t << 1, 0, 0, 1,
                 0, 1, 0, -5,
                 0, 0, 1, 1,
                 0, 0, 0, 1,
            terrain->Set_Model_Matrix(t * s * r);

            //// set object's material
            terrain->Set_Ka(Vector3f(0.1f, 0.1f, 0.1f));
            terrain->Set_Kd(Vector3f(0.7f, 0.7f, 0.7f));
            terrain->Set_Ks(Vector3f(1, 1, 1));
            terrain->Set_Shininess(128.f);

            //// bind shader to object (we do not bind texture for this object because we create noise for texture)
            terrain->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("terrain"));
        }

        //// Here we show an example of adding a transparent object with alpha blending
        //// This example will be useful if you implement objects such as tree leaves, grass blades, flower pedals, etc.
        //// Alpha blending will be turned on automatically if your texture has the alpha channel
        /**{
            //// create object by reading an obj mesh
            auto sqad = Add_Obj_Mesh_Object("obj/sqad.obj");

            //// set object's transform
            Matrix4f t;
            t << 1, 0, 0, -0.5,
                0, 1, 0, 0,
                0, 0, 1, 1.5,
                0, 0, 0, 1;
            sqad->Set_Model_Matrix(t);

            //// bind texture to object
            sqad->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("window_color"));

            //// bind shader to object
            sqad->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("blend"));
        }

        //// Here we show an example of adding a billboard particle with a star shape using alpha blending
        //// The billboard is rendered with its texture and is always facing the camera.
        //// This example will be useful if you plan to implement a CPU-based particle system.
        {
            //// create object by reading an obj mesh
            auto sqad = Add_Obj_Mesh_Object("obj/sqad.obj");

            //// set object's transform
            Matrix4f t;
            t << 1, 0, 0, 0,
                 0, 1, 0, 0,
                 0, 0, 1, 2.5,
                 0, 0, 0, 1;
            sqad->Set_Model_Matrix(t);

            //// bind texture to object
            sqad->Add_Texture("tex_color", OpenGLTextureLibrary::Get_Texture("star_color"));

            //// bind shader to object
            sqad->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("billboard"));
        }*/

        //// Here we show an example of shading (ray-tracing) a sphere with environment mapping
        /*
        {
            //// create object by reading an obj mesh
            auto sphere2 = Add_Obj_Mesh_Object("obj/sphere.obj");

            //// set object's transform
            Matrix4f t;
            t << .6, 0, 0, 0,
                0, .6, 0, -.5,
                0, 0, .6, 1,
                0, 0, 0, 1;
            sphere2->Set_Model_Matrix(t);

            //// bind shader to object
            sphere2->Add_Shader_Program(OpenGLShaderLibrary::Get_Shader("environment")); // bind shader to object
        }
        */

        //// This for-loop updates the rendering model for each object on the list
        for (auto &mesh_obj : mesh_object_array){
            Set_Polygon_Mode(mesh_obj, PolygonMode::Fill);
            Set_Shading_Mode(mesh_obj, ShadingMode::TexAlpha);
            mesh_obj->Set_Data_Refreshed();
            mesh_obj->Initialize();
        }
        Toggle_Play();
    }

    OpenGLTriangleMesh *Add_Obj_Mesh_Object(std::string obj_file_name)
    {
        auto mesh_obj = Add_Interactive_Object<OpenGLTriangleMesh>();
        Array<std::shared_ptr<TriangleMesh<3>>> meshes;
        // Obj::Read_From_Obj_File(obj_file_name, meshes);
        Obj::Read_From_Obj_File_Discrete_Triangles(obj_file_name, meshes);

        mesh_obj->mesh = *meshes[0];
        std::cout << "load tri_mesh from obj file, #vtx: " << mesh_obj->mesh.Vertices().size() << ", #ele: " << mesh_obj->mesh.Elements().size() << std::endl;

        mesh_object_array.push_back(mesh_obj);
        return mesh_obj;
    }

    //// Go to next frame
    virtual void Toggle_Next_Frame()
    {
        for (auto &mesh_obj : mesh_object_array)
            mesh_obj->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);

        if (bgEffect){
            bgEffect->setResolution((float)Win_Width(), (float)Win_Height());
            bgEffect->setTime(GLfloat(clock() - startTime) / CLOCKS_PER_SEC);
            bgEffect->setFrame(frame++);
        }
        OpenGLViewer::Toggle_Next_Frame();
    }

    virtual void Run()
    {
        OpenGLViewer::Run();
    }

    float hash1d(float t)
    {
        t += 3.;
        return fract(sin(t * 674.3) * 453.2);
    }
};

int main(int argc, char *argv[])
{
    MyDriver driver;
    driver.Initialize();
    driver.Run();
}

#endif