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
CMAKE_SOURCE_DIR = /home/wlx/chatroom-wlx/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wlx/chatroom-wlx/client/build

# Include any dependencies generated for this target.
include CMakeFiles/client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/client.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/src/Err.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Err.cpp.o: ../src/Err.cpp
CMakeFiles/client.dir/src/Err.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client.dir/src/Err.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/Err.cpp.o -MF CMakeFiles/client.dir/src/Err.cpp.o.d -o CMakeFiles/client.dir/src/Err.cpp.o -c /home/wlx/chatroom-wlx/client/src/Err.cpp

CMakeFiles/client.dir/src/Err.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Err.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/Err.cpp > CMakeFiles/client.dir/src/Err.cpp.i

CMakeFiles/client.dir/src/Err.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Err.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/Err.cpp -o CMakeFiles/client.dir/src/Err.cpp.s

CMakeFiles/client.dir/src/Group_menu.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Group_menu.cpp.o: ../src/Group_menu.cpp
CMakeFiles/client.dir/src/Group_menu.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client.dir/src/Group_menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/Group_menu.cpp.o -MF CMakeFiles/client.dir/src/Group_menu.cpp.o.d -o CMakeFiles/client.dir/src/Group_menu.cpp.o -c /home/wlx/chatroom-wlx/client/src/Group_menu.cpp

CMakeFiles/client.dir/src/Group_menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Group_menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/Group_menu.cpp > CMakeFiles/client.dir/src/Group_menu.cpp.i

CMakeFiles/client.dir/src/Group_menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Group_menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/Group_menu.cpp -o CMakeFiles/client.dir/src/Group_menu.cpp.s

CMakeFiles/client.dir/src/Massage.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Massage.cpp.o: ../src/Massage.cpp
CMakeFiles/client.dir/src/Massage.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/client.dir/src/Massage.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/Massage.cpp.o -MF CMakeFiles/client.dir/src/Massage.cpp.o.d -o CMakeFiles/client.dir/src/Massage.cpp.o -c /home/wlx/chatroom-wlx/client/src/Massage.cpp

CMakeFiles/client.dir/src/Massage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Massage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/Massage.cpp > CMakeFiles/client.dir/src/Massage.cpp.i

CMakeFiles/client.dir/src/Massage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Massage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/Massage.cpp -o CMakeFiles/client.dir/src/Massage.cpp.s

CMakeFiles/client.dir/src/Printf.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/Printf.cpp.o: ../src/Printf.cpp
CMakeFiles/client.dir/src/Printf.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/client.dir/src/Printf.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/Printf.cpp.o -MF CMakeFiles/client.dir/src/Printf.cpp.o.d -o CMakeFiles/client.dir/src/Printf.cpp.o -c /home/wlx/chatroom-wlx/client/src/Printf.cpp

CMakeFiles/client.dir/src/Printf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/Printf.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/Printf.cpp > CMakeFiles/client.dir/src/Printf.cpp.i

CMakeFiles/client.dir/src/Printf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/Printf.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/Printf.cpp -o CMakeFiles/client.dir/src/Printf.cpp.s

CMakeFiles/client.dir/src/clirun.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/clirun.cpp.o: ../src/clirun.cpp
CMakeFiles/client.dir/src/clirun.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/client.dir/src/clirun.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/clirun.cpp.o -MF CMakeFiles/client.dir/src/clirun.cpp.o.d -o CMakeFiles/client.dir/src/clirun.cpp.o -c /home/wlx/chatroom-wlx/client/src/clirun.cpp

CMakeFiles/client.dir/src/clirun.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/clirun.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/clirun.cpp > CMakeFiles/client.dir/src/clirun.cpp.i

CMakeFiles/client.dir/src/clirun.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/clirun.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/clirun.cpp -o CMakeFiles/client.dir/src/clirun.cpp.s

CMakeFiles/client.dir/src/clitmain.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/clitmain.cpp.o: ../src/clitmain.cpp
CMakeFiles/client.dir/src/clitmain.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/client.dir/src/clitmain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/clitmain.cpp.o -MF CMakeFiles/client.dir/src/clitmain.cpp.o.d -o CMakeFiles/client.dir/src/clitmain.cpp.o -c /home/wlx/chatroom-wlx/client/src/clitmain.cpp

CMakeFiles/client.dir/src/clitmain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/clitmain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/clitmain.cpp > CMakeFiles/client.dir/src/clitmain.cpp.i

CMakeFiles/client.dir/src/clitmain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/clitmain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/clitmain.cpp -o CMakeFiles/client.dir/src/clitmain.cpp.s

CMakeFiles/client.dir/src/file.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/file.cpp.o: ../src/file.cpp
CMakeFiles/client.dir/src/file.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/client.dir/src/file.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/file.cpp.o -MF CMakeFiles/client.dir/src/file.cpp.o.d -o CMakeFiles/client.dir/src/file.cpp.o -c /home/wlx/chatroom-wlx/client/src/file.cpp

CMakeFiles/client.dir/src/file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/file.cpp > CMakeFiles/client.dir/src/file.cpp.i

CMakeFiles/client.dir/src/file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/file.cpp -o CMakeFiles/client.dir/src/file.cpp.s

CMakeFiles/client.dir/src/friend_menu.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/friend_menu.cpp.o: ../src/friend_menu.cpp
CMakeFiles/client.dir/src/friend_menu.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/client.dir/src/friend_menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/friend_menu.cpp.o -MF CMakeFiles/client.dir/src/friend_menu.cpp.o.d -o CMakeFiles/client.dir/src/friend_menu.cpp.o -c /home/wlx/chatroom-wlx/client/src/friend_menu.cpp

CMakeFiles/client.dir/src/friend_menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/friend_menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/friend_menu.cpp > CMakeFiles/client.dir/src/friend_menu.cpp.i

CMakeFiles/client.dir/src/friend_menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/friend_menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/friend_menu.cpp -o CMakeFiles/client.dir/src/friend_menu.cpp.s

CMakeFiles/client.dir/src/mainmnue.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/mainmnue.cpp.o: ../src/mainmnue.cpp
CMakeFiles/client.dir/src/mainmnue.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/client.dir/src/mainmnue.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/mainmnue.cpp.o -MF CMakeFiles/client.dir/src/mainmnue.cpp.o.d -o CMakeFiles/client.dir/src/mainmnue.cpp.o -c /home/wlx/chatroom-wlx/client/src/mainmnue.cpp

CMakeFiles/client.dir/src/mainmnue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/mainmnue.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/mainmnue.cpp > CMakeFiles/client.dir/src/mainmnue.cpp.i

CMakeFiles/client.dir/src/mainmnue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/mainmnue.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/mainmnue.cpp -o CMakeFiles/client.dir/src/mainmnue.cpp.s

CMakeFiles/client.dir/src/manmage_menu.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/manmage_menu.cpp.o: ../src/manmage_menu.cpp
CMakeFiles/client.dir/src/manmage_menu.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/client.dir/src/manmage_menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/manmage_menu.cpp.o -MF CMakeFiles/client.dir/src/manmage_menu.cpp.o.d -o CMakeFiles/client.dir/src/manmage_menu.cpp.o -c /home/wlx/chatroom-wlx/client/src/manmage_menu.cpp

CMakeFiles/client.dir/src/manmage_menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/manmage_menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/manmage_menu.cpp > CMakeFiles/client.dir/src/manmage_menu.cpp.i

CMakeFiles/client.dir/src/manmage_menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/manmage_menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/manmage_menu.cpp -o CMakeFiles/client.dir/src/manmage_menu.cpp.s

CMakeFiles/client.dir/src/privateChat.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/privateChat.cpp.o: ../src/privateChat.cpp
CMakeFiles/client.dir/src/privateChat.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/client.dir/src/privateChat.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/privateChat.cpp.o -MF CMakeFiles/client.dir/src/privateChat.cpp.o.d -o CMakeFiles/client.dir/src/privateChat.cpp.o -c /home/wlx/chatroom-wlx/client/src/privateChat.cpp

CMakeFiles/client.dir/src/privateChat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/privateChat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/privateChat.cpp > CMakeFiles/client.dir/src/privateChat.cpp.i

CMakeFiles/client.dir/src/privateChat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/privateChat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/privateChat.cpp -o CMakeFiles/client.dir/src/privateChat.cpp.s

CMakeFiles/client.dir/src/recv.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/recv.cpp.o: ../src/recv.cpp
CMakeFiles/client.dir/src/recv.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/client.dir/src/recv.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/recv.cpp.o -MF CMakeFiles/client.dir/src/recv.cpp.o.d -o CMakeFiles/client.dir/src/recv.cpp.o -c /home/wlx/chatroom-wlx/client/src/recv.cpp

CMakeFiles/client.dir/src/recv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/recv.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/recv.cpp > CMakeFiles/client.dir/src/recv.cpp.i

CMakeFiles/client.dir/src/recv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/recv.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/recv.cpp -o CMakeFiles/client.dir/src/recv.cpp.s

CMakeFiles/client.dir/src/sign.cpp.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/src/sign.cpp.o: ../src/sign.cpp
CMakeFiles/client.dir/src/sign.cpp.o: CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/client.dir/src/sign.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/client.dir/src/sign.cpp.o -MF CMakeFiles/client.dir/src/sign.cpp.o.d -o CMakeFiles/client.dir/src/sign.cpp.o -c /home/wlx/chatroom-wlx/client/src/sign.cpp

CMakeFiles/client.dir/src/sign.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/src/sign.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/client/src/sign.cpp > CMakeFiles/client.dir/src/sign.cpp.i

CMakeFiles/client.dir/src/sign.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/src/sign.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/client/src/sign.cpp -o CMakeFiles/client.dir/src/sign.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/src/Err.cpp.o" \
"CMakeFiles/client.dir/src/Group_menu.cpp.o" \
"CMakeFiles/client.dir/src/Massage.cpp.o" \
"CMakeFiles/client.dir/src/Printf.cpp.o" \
"CMakeFiles/client.dir/src/clirun.cpp.o" \
"CMakeFiles/client.dir/src/clitmain.cpp.o" \
"CMakeFiles/client.dir/src/file.cpp.o" \
"CMakeFiles/client.dir/src/friend_menu.cpp.o" \
"CMakeFiles/client.dir/src/mainmnue.cpp.o" \
"CMakeFiles/client.dir/src/manmage_menu.cpp.o" \
"CMakeFiles/client.dir/src/privateChat.cpp.o" \
"CMakeFiles/client.dir/src/recv.cpp.o" \
"CMakeFiles/client.dir/src/sign.cpp.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

../bin/client: CMakeFiles/client.dir/src/Err.cpp.o
../bin/client: CMakeFiles/client.dir/src/Group_menu.cpp.o
../bin/client: CMakeFiles/client.dir/src/Massage.cpp.o
../bin/client: CMakeFiles/client.dir/src/Printf.cpp.o
../bin/client: CMakeFiles/client.dir/src/clirun.cpp.o
../bin/client: CMakeFiles/client.dir/src/clitmain.cpp.o
../bin/client: CMakeFiles/client.dir/src/file.cpp.o
../bin/client: CMakeFiles/client.dir/src/friend_menu.cpp.o
../bin/client: CMakeFiles/client.dir/src/mainmnue.cpp.o
../bin/client: CMakeFiles/client.dir/src/manmage_menu.cpp.o
../bin/client: CMakeFiles/client.dir/src/privateChat.cpp.o
../bin/client: CMakeFiles/client.dir/src/recv.cpp.o
../bin/client: CMakeFiles/client.dir/src/sign.cpp.o
../bin/client: CMakeFiles/client.dir/build.make
../bin/client: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlx/chatroom-wlx/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable ../bin/client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: ../bin/client
.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	cd /home/wlx/chatroom-wlx/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlx/chatroom-wlx/client /home/wlx/chatroom-wlx/client /home/wlx/chatroom-wlx/client/build /home/wlx/chatroom-wlx/client/build /home/wlx/chatroom-wlx/client/build/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/client.dir/depend
