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
CMAKE_SOURCE_DIR = /home/wlx/chatroom-wlx/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wlx/chatroom-wlx/server/build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/src/Err.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/Err.cpp.o: ../src/Err.cpp
CMakeFiles/server.dir/src/Err.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server.dir/src/Err.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/Err.cpp.o -MF CMakeFiles/server.dir/src/Err.cpp.o.d -o CMakeFiles/server.dir/src/Err.cpp.o -c /home/wlx/chatroom-wlx/server/src/Err.cpp

CMakeFiles/server.dir/src/Err.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/Err.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/Err.cpp > CMakeFiles/server.dir/src/Err.cpp.i

CMakeFiles/server.dir/src/Err.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/Err.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/Err.cpp -o CMakeFiles/server.dir/src/Err.cpp.s

CMakeFiles/server.dir/src/Group.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/Group.cpp.o: ../src/Group.cpp
CMakeFiles/server.dir/src/Group.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/server.dir/src/Group.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/Group.cpp.o -MF CMakeFiles/server.dir/src/Group.cpp.o.d -o CMakeFiles/server.dir/src/Group.cpp.o -c /home/wlx/chatroom-wlx/server/src/Group.cpp

CMakeFiles/server.dir/src/Group.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/Group.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/Group.cpp > CMakeFiles/server.dir/src/Group.cpp.i

CMakeFiles/server.dir/src/Group.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/Group.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/Group.cpp -o CMakeFiles/server.dir/src/Group.cpp.s

CMakeFiles/server.dir/src/Group_menu.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/Group_menu.cpp.o: ../src/Group_menu.cpp
CMakeFiles/server.dir/src/Group_menu.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/server.dir/src/Group_menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/Group_menu.cpp.o -MF CMakeFiles/server.dir/src/Group_menu.cpp.o.d -o CMakeFiles/server.dir/src/Group_menu.cpp.o -c /home/wlx/chatroom-wlx/server/src/Group_menu.cpp

CMakeFiles/server.dir/src/Group_menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/Group_menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/Group_menu.cpp > CMakeFiles/server.dir/src/Group_menu.cpp.i

CMakeFiles/server.dir/src/Group_menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/Group_menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/Group_menu.cpp -o CMakeFiles/server.dir/src/Group_menu.cpp.s

CMakeFiles/server.dir/src/Massage.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/Massage.cpp.o: ../src/Massage.cpp
CMakeFiles/server.dir/src/Massage.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/server.dir/src/Massage.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/Massage.cpp.o -MF CMakeFiles/server.dir/src/Massage.cpp.o.d -o CMakeFiles/server.dir/src/Massage.cpp.o -c /home/wlx/chatroom-wlx/server/src/Massage.cpp

CMakeFiles/server.dir/src/Massage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/Massage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/Massage.cpp > CMakeFiles/server.dir/src/Massage.cpp.i

CMakeFiles/server.dir/src/Massage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/Massage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/Massage.cpp -o CMakeFiles/server.dir/src/Massage.cpp.s

CMakeFiles/server.dir/src/User.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/User.cpp.o: ../src/User.cpp
CMakeFiles/server.dir/src/User.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/server.dir/src/User.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/User.cpp.o -MF CMakeFiles/server.dir/src/User.cpp.o.d -o CMakeFiles/server.dir/src/User.cpp.o -c /home/wlx/chatroom-wlx/server/src/User.cpp

CMakeFiles/server.dir/src/User.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/User.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/User.cpp > CMakeFiles/server.dir/src/User.cpp.i

CMakeFiles/server.dir/src/User.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/User.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/User.cpp -o CMakeFiles/server.dir/src/User.cpp.s

CMakeFiles/server.dir/src/file.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/file.cpp.o: ../src/file.cpp
CMakeFiles/server.dir/src/file.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/server.dir/src/file.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/file.cpp.o -MF CMakeFiles/server.dir/src/file.cpp.o.d -o CMakeFiles/server.dir/src/file.cpp.o -c /home/wlx/chatroom-wlx/server/src/file.cpp

CMakeFiles/server.dir/src/file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/file.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/file.cpp > CMakeFiles/server.dir/src/file.cpp.i

CMakeFiles/server.dir/src/file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/file.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/file.cpp -o CMakeFiles/server.dir/src/file.cpp.s

CMakeFiles/server.dir/src/friends_menu.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/friends_menu.cpp.o: ../src/friends_menu.cpp
CMakeFiles/server.dir/src/friends_menu.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/server.dir/src/friends_menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/friends_menu.cpp.o -MF CMakeFiles/server.dir/src/friends_menu.cpp.o.d -o CMakeFiles/server.dir/src/friends_menu.cpp.o -c /home/wlx/chatroom-wlx/server/src/friends_menu.cpp

CMakeFiles/server.dir/src/friends_menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/friends_menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/friends_menu.cpp > CMakeFiles/server.dir/src/friends_menu.cpp.i

CMakeFiles/server.dir/src/friends_menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/friends_menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/friends_menu.cpp -o CMakeFiles/server.dir/src/friends_menu.cpp.s

CMakeFiles/server.dir/src/mainmenu.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/mainmenu.cpp.o: ../src/mainmenu.cpp
CMakeFiles/server.dir/src/mainmenu.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/server.dir/src/mainmenu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/mainmenu.cpp.o -MF CMakeFiles/server.dir/src/mainmenu.cpp.o.d -o CMakeFiles/server.dir/src/mainmenu.cpp.o -c /home/wlx/chatroom-wlx/server/src/mainmenu.cpp

CMakeFiles/server.dir/src/mainmenu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/mainmenu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/mainmenu.cpp > CMakeFiles/server.dir/src/mainmenu.cpp.i

CMakeFiles/server.dir/src/mainmenu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/mainmenu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/mainmenu.cpp -o CMakeFiles/server.dir/src/mainmenu.cpp.s

CMakeFiles/server.dir/src/manage_menu.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/manage_menu.cpp.o: ../src/manage_menu.cpp
CMakeFiles/server.dir/src/manage_menu.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/server.dir/src/manage_menu.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/manage_menu.cpp.o -MF CMakeFiles/server.dir/src/manage_menu.cpp.o.d -o CMakeFiles/server.dir/src/manage_menu.cpp.o -c /home/wlx/chatroom-wlx/server/src/manage_menu.cpp

CMakeFiles/server.dir/src/manage_menu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/manage_menu.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/manage_menu.cpp > CMakeFiles/server.dir/src/manage_menu.cpp.i

CMakeFiles/server.dir/src/manage_menu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/manage_menu.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/manage_menu.cpp -o CMakeFiles/server.dir/src/manage_menu.cpp.s

CMakeFiles/server.dir/src/privatechat.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/privatechat.cpp.o: ../src/privatechat.cpp
CMakeFiles/server.dir/src/privatechat.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/server.dir/src/privatechat.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/privatechat.cpp.o -MF CMakeFiles/server.dir/src/privatechat.cpp.o.d -o CMakeFiles/server.dir/src/privatechat.cpp.o -c /home/wlx/chatroom-wlx/server/src/privatechat.cpp

CMakeFiles/server.dir/src/privatechat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/privatechat.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/privatechat.cpp > CMakeFiles/server.dir/src/privatechat.cpp.i

CMakeFiles/server.dir/src/privatechat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/privatechat.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/privatechat.cpp -o CMakeFiles/server.dir/src/privatechat.cpp.s

CMakeFiles/server.dir/src/serun.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/serun.cpp.o: ../src/serun.cpp
CMakeFiles/server.dir/src/serun.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/server.dir/src/serun.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/serun.cpp.o -MF CMakeFiles/server.dir/src/serun.cpp.o.d -o CMakeFiles/server.dir/src/serun.cpp.o -c /home/wlx/chatroom-wlx/server/src/serun.cpp

CMakeFiles/server.dir/src/serun.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/serun.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/serun.cpp > CMakeFiles/server.dir/src/serun.cpp.i

CMakeFiles/server.dir/src/serun.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/serun.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/serun.cpp -o CMakeFiles/server.dir/src/serun.cpp.s

CMakeFiles/server.dir/src/servermain.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/servermain.cpp.o: ../src/servermain.cpp
CMakeFiles/server.dir/src/servermain.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/server.dir/src/servermain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/servermain.cpp.o -MF CMakeFiles/server.dir/src/servermain.cpp.o.d -o CMakeFiles/server.dir/src/servermain.cpp.o -c /home/wlx/chatroom-wlx/server/src/servermain.cpp

CMakeFiles/server.dir/src/servermain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/servermain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/servermain.cpp > CMakeFiles/server.dir/src/servermain.cpp.i

CMakeFiles/server.dir/src/servermain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/servermain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/servermain.cpp -o CMakeFiles/server.dir/src/servermain.cpp.s

CMakeFiles/server.dir/src/sign.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/sign.cpp.o: ../src/sign.cpp
CMakeFiles/server.dir/src/sign.cpp.o: CMakeFiles/server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/server.dir/src/sign.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/server.dir/src/sign.cpp.o -MF CMakeFiles/server.dir/src/sign.cpp.o.d -o CMakeFiles/server.dir/src/sign.cpp.o -c /home/wlx/chatroom-wlx/server/src/sign.cpp

CMakeFiles/server.dir/src/sign.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/sign.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wlx/chatroom-wlx/server/src/sign.cpp > CMakeFiles/server.dir/src/sign.cpp.i

CMakeFiles/server.dir/src/sign.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/sign.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wlx/chatroom-wlx/server/src/sign.cpp -o CMakeFiles/server.dir/src/sign.cpp.s

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/Err.cpp.o" \
"CMakeFiles/server.dir/src/Group.cpp.o" \
"CMakeFiles/server.dir/src/Group_menu.cpp.o" \
"CMakeFiles/server.dir/src/Massage.cpp.o" \
"CMakeFiles/server.dir/src/User.cpp.o" \
"CMakeFiles/server.dir/src/file.cpp.o" \
"CMakeFiles/server.dir/src/friends_menu.cpp.o" \
"CMakeFiles/server.dir/src/mainmenu.cpp.o" \
"CMakeFiles/server.dir/src/manage_menu.cpp.o" \
"CMakeFiles/server.dir/src/privatechat.cpp.o" \
"CMakeFiles/server.dir/src/serun.cpp.o" \
"CMakeFiles/server.dir/src/servermain.cpp.o" \
"CMakeFiles/server.dir/src/sign.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

../bin/server: CMakeFiles/server.dir/src/Err.cpp.o
../bin/server: CMakeFiles/server.dir/src/Group.cpp.o
../bin/server: CMakeFiles/server.dir/src/Group_menu.cpp.o
../bin/server: CMakeFiles/server.dir/src/Massage.cpp.o
../bin/server: CMakeFiles/server.dir/src/User.cpp.o
../bin/server: CMakeFiles/server.dir/src/file.cpp.o
../bin/server: CMakeFiles/server.dir/src/friends_menu.cpp.o
../bin/server: CMakeFiles/server.dir/src/mainmenu.cpp.o
../bin/server: CMakeFiles/server.dir/src/manage_menu.cpp.o
../bin/server: CMakeFiles/server.dir/src/privatechat.cpp.o
../bin/server: CMakeFiles/server.dir/src/serun.cpp.o
../bin/server: CMakeFiles/server.dir/src/servermain.cpp.o
../bin/server: CMakeFiles/server.dir/src/sign.cpp.o
../bin/server: CMakeFiles/server.dir/build.make
../bin/server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wlx/chatroom-wlx/server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable ../bin/server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: ../bin/server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /home/wlx/chatroom-wlx/server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wlx/chatroom-wlx/server /home/wlx/chatroom-wlx/server /home/wlx/chatroom-wlx/server/build /home/wlx/chatroom-wlx/server/build /home/wlx/chatroom-wlx/server/build/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend
