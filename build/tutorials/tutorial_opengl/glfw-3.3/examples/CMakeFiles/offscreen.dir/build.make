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
CMAKE_SOURCE_DIR = /Users/husnajakeer/Documents/Husna/GT/3451-final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/husnajakeer/Documents/Husna/GT/3451-final/build

# Include any dependencies generated for this target.
include tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/compiler_depend.make

# Include the progress variables for this target.
include tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/progress.make

# Include the compile flags for this target's objects.
include tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/flags.make

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.o: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.o: /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/examples/offscreen.c
tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.o: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/husnajakeer/Documents/Husna/GT/3451-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.o"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.o -MF CMakeFiles/offscreen.dir/offscreen.c.o.d -o CMakeFiles/offscreen.dir/offscreen.c.o -c /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/examples/offscreen.c

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/offscreen.dir/offscreen.c.i"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/examples/offscreen.c > CMakeFiles/offscreen.dir/offscreen.c.i

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/offscreen.dir/offscreen.c.s"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/examples/offscreen.c -o CMakeFiles/offscreen.dir/offscreen.c.s

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o: /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c
tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/husnajakeer/Documents/Husna/GT/3451-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o -MF CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o -c /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/offscreen.dir/__/deps/glad_gl.c.i"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c > CMakeFiles/offscreen.dir/__/deps/glad_gl.c.i

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/offscreen.dir/__/deps/glad_gl.c.s"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c -o CMakeFiles/offscreen.dir/__/deps/glad_gl.c.s

# Object files for target offscreen
offscreen_OBJECTS = \
"CMakeFiles/offscreen.dir/offscreen.c.o" \
"CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o"

# External object files for target offscreen
offscreen_EXTERNAL_OBJECTS =

tutorials/tutorial_opengl/glfw-3.3/examples/offscreen: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/offscreen.c.o
tutorials/tutorial_opengl/glfw-3.3/examples/offscreen: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/__/deps/glad_gl.c.o
tutorials/tutorial_opengl/glfw-3.3/examples/offscreen: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/build.make
tutorials/tutorial_opengl/glfw-3.3/examples/offscreen: tutorials/tutorial_opengl/glfw-3.3/src/libglfw3.a
tutorials/tutorial_opengl/glfw-3.3/examples/offscreen: tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/husnajakeer/Documents/Husna/GT/3451-final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable offscreen"
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/offscreen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/build: tutorials/tutorial_opengl/glfw-3.3/examples/offscreen
.PHONY : tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/build

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/clean:
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples && $(CMAKE_COMMAND) -P CMakeFiles/offscreen.dir/cmake_clean.cmake
.PHONY : tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/clean

tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/depend:
	cd /Users/husnajakeer/Documents/Husna/GT/3451-final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/husnajakeer/Documents/Husna/GT/3451-final /Users/husnajakeer/Documents/Husna/GT/3451-final/tutorials/tutorial_opengl/glfw-3.3/examples /Users/husnajakeer/Documents/Husna/GT/3451-final/build /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples /Users/husnajakeer/Documents/Husna/GT/3451-final/build/tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tutorials/tutorial_opengl/glfw-3.3/examples/CMakeFiles/offscreen.dir/depend

