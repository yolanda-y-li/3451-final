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
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/compiler_depend.make

# Include the progress variables for this target.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/progress.make

# Include the compile flags for this target's objects.
include tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/flags.make

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/tests/msaa.c
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.o -MF CMakeFiles/msaa.dir/msaa.c.o.d -o CMakeFiles/msaa.dir/msaa.c.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/tests/msaa.c"

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/msaa.dir/msaa.c.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/tests/msaa.c" > CMakeFiles/msaa.dir/msaa.c.i

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/msaa.dir/msaa.c.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/tests/msaa.c" -o CMakeFiles/msaa.dir/msaa.c.s

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/getopt.c
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o -MF CMakeFiles/msaa.dir/__/deps/getopt.c.o.d -o CMakeFiles/msaa.dir/__/deps/getopt.c.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/getopt.c"

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/msaa.dir/__/deps/getopt.c.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/getopt.c" > CMakeFiles/msaa.dir/__/deps/getopt.c.i

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/msaa.dir/__/deps/getopt.c.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/getopt.c" -o CMakeFiles/msaa.dir/__/deps/getopt.c.s

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/flags.make
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o: /Users/yolandali/Documents/CS\ 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o -MF CMakeFiles/msaa.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/msaa.dir/__/deps/glad_gl.c.o -c "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c"

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/msaa.dir/__/deps/glad_gl.c.i"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c" > CMakeFiles/msaa.dir/__/deps/glad_gl.c.i

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/msaa.dir/__/deps/glad_gl.c.s"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/deps/glad_gl.c" -o CMakeFiles/msaa.dir/__/deps/glad_gl.c.s

# Object files for target msaa
msaa_OBJECTS = \
"CMakeFiles/msaa.dir/msaa.c.o" \
"CMakeFiles/msaa.dir/__/deps/getopt.c.o" \
"CMakeFiles/msaa.dir/__/deps/glad_gl.c.o"

# External object files for target msaa
msaa_EXTERNAL_OBJECTS =

tutorials/tutorial_opengl/glfw-3.3/tests/msaa: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/msaa.c.o
tutorials/tutorial_opengl/glfw-3.3/tests/msaa: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/getopt.c.o
tutorials/tutorial_opengl/glfw-3.3/tests/msaa: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/__/deps/glad_gl.c.o
tutorials/tutorial_opengl/glfw-3.3/tests/msaa: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/build.make
tutorials/tutorial_opengl/glfw-3.3/tests/msaa: tutorials/tutorial_opengl/glfw-3.3/src/libglfw3.a
tutorials/tutorial_opengl/glfw-3.3/tests/msaa: tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable msaa"
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/msaa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/build: tutorials/tutorial_opengl/glfw-3.3/tests/msaa
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/build

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/clean:
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" && $(CMAKE_COMMAND) -P CMakeFiles/msaa.dir/cmake_clean.cmake
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/clean

tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/depend:
	cd "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/tutorials/tutorial_opengl/glfw-3.3/tests" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests" "/Users/yolandali/Documents/CS 3451/cs3451-computer-graphics-starter-code/build/tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : tutorials/tutorial_opengl/glfw-3.3/tests/CMakeFiles/msaa.dir/depend

