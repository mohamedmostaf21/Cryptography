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
CMAKE_COMMAND = /snap/cmake/1366/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1366/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mohamed/crypto

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mohamed/crypto/build

# Include any dependencies generated for this target.
include CMakeFiles/Enc_Dec_RSA.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Enc_Dec_RSA.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Enc_Dec_RSA.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Enc_Dec_RSA.dir/flags.make

CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o: CMakeFiles/Enc_Dec_RSA.dir/flags.make
CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o: /home/mohamed/crypto/Cryptopp_examples/RSA_2048.cpp
CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o: CMakeFiles/Enc_Dec_RSA.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/mohamed/crypto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o -MF CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o.d -o CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o -c /home/mohamed/crypto/Cryptopp_examples/RSA_2048.cpp

CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mohamed/crypto/Cryptopp_examples/RSA_2048.cpp > CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.i

CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mohamed/crypto/Cryptopp_examples/RSA_2048.cpp -o CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.s

# Object files for target Enc_Dec_RSA
Enc_Dec_RSA_OBJECTS = \
"CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o"

# External object files for target Enc_Dec_RSA
Enc_Dec_RSA_EXTERNAL_OBJECTS =

/home/mohamed/crypto/Executables_generation/RSA_2048/Enc_Dec_RSA: CMakeFiles/Enc_Dec_RSA.dir/Cryptopp_examples/RSA_2048.cpp.o
/home/mohamed/crypto/Executables_generation/RSA_2048/Enc_Dec_RSA: CMakeFiles/Enc_Dec_RSA.dir/build.make
/home/mohamed/crypto/Executables_generation/RSA_2048/Enc_Dec_RSA: CMakeFiles/Enc_Dec_RSA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/mohamed/crypto/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/mohamed/crypto/Executables_generation/RSA_2048/Enc_Dec_RSA"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Enc_Dec_RSA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Enc_Dec_RSA.dir/build: /home/mohamed/crypto/Executables_generation/RSA_2048/Enc_Dec_RSA
.PHONY : CMakeFiles/Enc_Dec_RSA.dir/build

CMakeFiles/Enc_Dec_RSA.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Enc_Dec_RSA.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Enc_Dec_RSA.dir/clean

CMakeFiles/Enc_Dec_RSA.dir/depend:
	cd /home/mohamed/crypto/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mohamed/crypto /home/mohamed/crypto /home/mohamed/crypto/build /home/mohamed/crypto/build /home/mohamed/crypto/build/CMakeFiles/Enc_Dec_RSA.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Enc_Dec_RSA.dir/depend
