# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/nexus/Downloads/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/nexus/Downloads/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nexus/CLionProjects/Pomodoro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nexus/CLionProjects/Pomodoro/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Pomodoro.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Pomodoro.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Pomodoro.dir/flags.make

CMakeFiles/Pomodoro.dir/main.c.o: CMakeFiles/Pomodoro.dir/flags.make
CMakeFiles/Pomodoro.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nexus/CLionProjects/Pomodoro/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Pomodoro.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Pomodoro.dir/main.c.o   -c /home/nexus/CLionProjects/Pomodoro/main.c

CMakeFiles/Pomodoro.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Pomodoro.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/nexus/CLionProjects/Pomodoro/main.c > CMakeFiles/Pomodoro.dir/main.c.i

CMakeFiles/Pomodoro.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Pomodoro.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/nexus/CLionProjects/Pomodoro/main.c -o CMakeFiles/Pomodoro.dir/main.c.s

# Object files for target Pomodoro
Pomodoro_OBJECTS = \
"CMakeFiles/Pomodoro.dir/main.c.o"

# External object files for target Pomodoro
Pomodoro_EXTERNAL_OBJECTS =

Pomodoro: CMakeFiles/Pomodoro.dir/main.c.o
Pomodoro: CMakeFiles/Pomodoro.dir/build.make
Pomodoro: CMakeFiles/Pomodoro.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nexus/CLionProjects/Pomodoro/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Pomodoro"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Pomodoro.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Pomodoro.dir/build: Pomodoro

.PHONY : CMakeFiles/Pomodoro.dir/build

CMakeFiles/Pomodoro.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Pomodoro.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Pomodoro.dir/clean

CMakeFiles/Pomodoro.dir/depend:
	cd /home/nexus/CLionProjects/Pomodoro/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nexus/CLionProjects/Pomodoro /home/nexus/CLionProjects/Pomodoro /home/nexus/CLionProjects/Pomodoro/cmake-build-debug /home/nexus/CLionProjects/Pomodoro/cmake-build-debug /home/nexus/CLionProjects/Pomodoro/cmake-build-debug/CMakeFiles/Pomodoro.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Pomodoro.dir/depend

