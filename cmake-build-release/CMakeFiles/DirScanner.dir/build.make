# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amidsan/CLionProjects/DirScanner

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amidsan/CLionProjects/DirScanner/cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/DirScanner.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DirScanner.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DirScanner.dir/flags.make

CMakeFiles/DirScanner.dir/main.cpp.o: CMakeFiles/DirScanner.dir/flags.make
CMakeFiles/DirScanner.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amidsan/CLionProjects/DirScanner/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DirScanner.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DirScanner.dir/main.cpp.o -c /Users/amidsan/CLionProjects/DirScanner/main.cpp

CMakeFiles/DirScanner.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DirScanner.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amidsan/CLionProjects/DirScanner/main.cpp > CMakeFiles/DirScanner.dir/main.cpp.i

CMakeFiles/DirScanner.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DirScanner.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amidsan/CLionProjects/DirScanner/main.cpp -o CMakeFiles/DirScanner.dir/main.cpp.s

CMakeFiles/DirScanner.dir/Reader.cpp.o: CMakeFiles/DirScanner.dir/flags.make
CMakeFiles/DirScanner.dir/Reader.cpp.o: ../Reader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amidsan/CLionProjects/DirScanner/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DirScanner.dir/Reader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DirScanner.dir/Reader.cpp.o -c /Users/amidsan/CLionProjects/DirScanner/Reader.cpp

CMakeFiles/DirScanner.dir/Reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DirScanner.dir/Reader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amidsan/CLionProjects/DirScanner/Reader.cpp > CMakeFiles/DirScanner.dir/Reader.cpp.i

CMakeFiles/DirScanner.dir/Reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DirScanner.dir/Reader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amidsan/CLionProjects/DirScanner/Reader.cpp -o CMakeFiles/DirScanner.dir/Reader.cpp.s

CMakeFiles/DirScanner.dir/Scanner.cpp.o: CMakeFiles/DirScanner.dir/flags.make
CMakeFiles/DirScanner.dir/Scanner.cpp.o: ../Scanner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amidsan/CLionProjects/DirScanner/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DirScanner.dir/Scanner.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DirScanner.dir/Scanner.cpp.o -c /Users/amidsan/CLionProjects/DirScanner/Scanner.cpp

CMakeFiles/DirScanner.dir/Scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DirScanner.dir/Scanner.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amidsan/CLionProjects/DirScanner/Scanner.cpp > CMakeFiles/DirScanner.dir/Scanner.cpp.i

CMakeFiles/DirScanner.dir/Scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DirScanner.dir/Scanner.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amidsan/CLionProjects/DirScanner/Scanner.cpp -o CMakeFiles/DirScanner.dir/Scanner.cpp.s

# Object files for target DirScanner
DirScanner_OBJECTS = \
"CMakeFiles/DirScanner.dir/main.cpp.o" \
"CMakeFiles/DirScanner.dir/Reader.cpp.o" \
"CMakeFiles/DirScanner.dir/Scanner.cpp.o"

# External object files for target DirScanner
DirScanner_EXTERNAL_OBJECTS =

DirScanner: CMakeFiles/DirScanner.dir/main.cpp.o
DirScanner: CMakeFiles/DirScanner.dir/Reader.cpp.o
DirScanner: CMakeFiles/DirScanner.dir/Scanner.cpp.o
DirScanner: CMakeFiles/DirScanner.dir/build.make
DirScanner: /opt/local/libexec/boost/1.69/lib/libboost_filesystem-mt.dylib
DirScanner: CMakeFiles/DirScanner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amidsan/CLionProjects/DirScanner/cmake-build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable DirScanner"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DirScanner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DirScanner.dir/build: DirScanner

.PHONY : CMakeFiles/DirScanner.dir/build

CMakeFiles/DirScanner.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DirScanner.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DirScanner.dir/clean

CMakeFiles/DirScanner.dir/depend:
	cd /Users/amidsan/CLionProjects/DirScanner/cmake-build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amidsan/CLionProjects/DirScanner /Users/amidsan/CLionProjects/DirScanner /Users/amidsan/CLionProjects/DirScanner/cmake-build-release /Users/amidsan/CLionProjects/DirScanner/cmake-build-release /Users/amidsan/CLionProjects/DirScanner/cmake-build-release/CMakeFiles/DirScanner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DirScanner.dir/depend

