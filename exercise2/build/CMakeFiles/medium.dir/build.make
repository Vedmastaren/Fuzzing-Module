# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Fuzzing-Module/exercise2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Fuzzing-Module/exercise2/build

# Include any dependencies generated for this target.
include CMakeFiles/medium.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/medium.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/medium.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/medium.dir/flags.make

CMakeFiles/medium.dir/airplane_object.cpp.o: CMakeFiles/medium.dir/flags.make
CMakeFiles/medium.dir/airplane_object.cpp.o: ../airplane_object.cpp
CMakeFiles/medium.dir/airplane_object.cpp.o: CMakeFiles/medium.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Fuzzing-Module/exercise2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/medium.dir/airplane_object.cpp.o"
	/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/medium.dir/airplane_object.cpp.o -MF CMakeFiles/medium.dir/airplane_object.cpp.o.d -o CMakeFiles/medium.dir/airplane_object.cpp.o -c /Fuzzing-Module/exercise2/airplane_object.cpp

CMakeFiles/medium.dir/airplane_object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/medium.dir/airplane_object.cpp.i"
	/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Fuzzing-Module/exercise2/airplane_object.cpp > CMakeFiles/medium.dir/airplane_object.cpp.i

CMakeFiles/medium.dir/airplane_object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/medium.dir/airplane_object.cpp.s"
	/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Fuzzing-Module/exercise2/airplane_object.cpp -o CMakeFiles/medium.dir/airplane_object.cpp.s

CMakeFiles/medium.dir/main.cpp.o: CMakeFiles/medium.dir/flags.make
CMakeFiles/medium.dir/main.cpp.o: ../main.cpp
CMakeFiles/medium.dir/main.cpp.o: CMakeFiles/medium.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Fuzzing-Module/exercise2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/medium.dir/main.cpp.o"
	/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/medium.dir/main.cpp.o -MF CMakeFiles/medium.dir/main.cpp.o.d -o CMakeFiles/medium.dir/main.cpp.o -c /Fuzzing-Module/exercise2/main.cpp

CMakeFiles/medium.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/medium.dir/main.cpp.i"
	/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Fuzzing-Module/exercise2/main.cpp > CMakeFiles/medium.dir/main.cpp.i

CMakeFiles/medium.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/medium.dir/main.cpp.s"
	/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Fuzzing-Module/exercise2/main.cpp -o CMakeFiles/medium.dir/main.cpp.s

# Object files for target medium
medium_OBJECTS = \
"CMakeFiles/medium.dir/airplane_object.cpp.o" \
"CMakeFiles/medium.dir/main.cpp.o"

# External object files for target medium
medium_EXTERNAL_OBJECTS =

medium: CMakeFiles/medium.dir/airplane_object.cpp.o
medium: CMakeFiles/medium.dir/main.cpp.o
medium: CMakeFiles/medium.dir/build.make
medium: CMakeFiles/medium.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Fuzzing-Module/exercise2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable medium"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/medium.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/medium.dir/build: medium
.PHONY : CMakeFiles/medium.dir/build

CMakeFiles/medium.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/medium.dir/cmake_clean.cmake
.PHONY : CMakeFiles/medium.dir/clean

CMakeFiles/medium.dir/depend:
	cd /Fuzzing-Module/exercise2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Fuzzing-Module/exercise2 /Fuzzing-Module/exercise2 /Fuzzing-Module/exercise2/build /Fuzzing-Module/exercise2/build /Fuzzing-Module/exercise2/build/CMakeFiles/medium.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/medium.dir/depend

