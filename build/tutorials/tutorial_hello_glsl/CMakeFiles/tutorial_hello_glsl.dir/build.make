# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build"

# Include any dependencies generated for this target.
include tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.make

# Include the progress variables for this target.
include tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/progress.make

# Include the compile flags for this target's objects.
include tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLBufferObjects.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLBufferObjects.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLBufferObjects.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLBufferObjects.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLMarkerObjects.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLMarkerObjects.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLMarkerObjects.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLMarkerObjects.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLObject.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLObject.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLObject.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLObject.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLShaderProgram.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLShaderProgram.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLShaderProgram.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLShaderProgram.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLTexture.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLTexture.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLTexture.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLTexture.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLViewer.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLViewer.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLViewer.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLViewer.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/OpenGLWindow.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLWindow.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLWindow.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/OpenGLWindow.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/glad.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/glad.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/glad.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/glad.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/src/mikktspace.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/mikktspace.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/mikktspace.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/src/mikktspace.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_hello_glsl/main.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_hello_glsl/main.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/main.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_hello_glsl/main.cpp" > CMakeFiles/tutorial_hello_glsl.dir/main.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/main.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_hello_glsl/main.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/main.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/ext/stb/StbImage.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/ext/stb/StbImage.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/ext/stb/StbImage.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/ext/stb/StbImage.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.s

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/flags.make
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/ext/tiny_gltf/TinyGltfLoader.cpp
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o -MF CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o.d -o CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/ext/tiny_gltf/TinyGltfLoader.cpp"

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/ext/tiny_gltf/TinyGltfLoader.cpp" > CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.i

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/ext/tiny_gltf/TinyGltfLoader.cpp" -o CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.s

# Object files for target tutorial_hello_glsl
tutorial_hello_glsl_OBJECTS = \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o" \
"CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o"

# External object files for target tutorial_hello_glsl
tutorial_hello_glsl_EXTERNAL_OBJECTS =

tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLBufferObjects.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLMarkerObjects.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLObject.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLShaderProgram.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLTexture.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLViewer.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/OpenGLWindow.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/glad.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/src/mikktspace.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/main.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/stb/StbImage.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/__/__/ext/tiny_gltf/TinyGltfLoader.cpp.o
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/build.make
tutorials/tutorial_hello_glsl/tutorial_hello_glsl: tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable tutorial_hello_glsl"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tutorial_hello_glsl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/build: tutorials/tutorial_hello_glsl/tutorial_hello_glsl
.PHONY : tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/build

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/clean:
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" && $(CMAKE_COMMAND) -P CMakeFiles/tutorial_hello_glsl.dir/cmake_clean.cmake
.PHONY : tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/clean

tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/depend:
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_hello_glsl" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : tutorials/tutorial_hello_glsl/CMakeFiles/tutorial_hello_glsl.dir/depend

