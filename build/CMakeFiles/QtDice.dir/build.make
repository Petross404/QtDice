# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Petros\projects\QtDice

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Petros\projects\QtDice\build

# Include any dependencies generated for this target.
include CMakeFiles\QtDice.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\QtDice.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\QtDice.dir\flags.make

qrc_dice.cpp: ..\src\resources\images\dice-1.png
qrc_dice.cpp: ..\src\resources\images\dice-2.png
qrc_dice.cpp: ..\src\resources\images\dice-3.png
qrc_dice.cpp: ..\src\resources\images\dice-4.png
qrc_dice.cpp: ..\src\resources\images\dice-5.png
qrc_dice.cpp: ..\src\resources\images\dice-6.png
qrc_dice.cpp: ..\src\resources\images\dice.png
qrc_dice.cpp: ..\src\resources\images\dice.ico
qrc_dice.cpp: ..\src\resources\images\exit.ico
qrc_dice.cpp: ..\src\resources\images\rolling.gif
qrc_dice.cpp: ..\src\resources\images\rolling_infinite.gif
qrc_dice.cpp: ..\src\resources\images\Qt_logo_2016.svg.ico
qrc_dice.cpp: ..\src\resources\images\386.png
qrc_dice.cpp: ..\src\resources\images\386.ico
qrc_dice.cpp: ..\src\resources\images\bluedice.gif
qrc_dice.cpp: ..\src\resources\sound\roll.wav
qrc_dice.cpp: ..\src\resources\images\SettingsL.png
qrc_dice.cpp: ..\src\dice.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating qrc_dice.cpp"
	C:\Qt\5.12.0\msvc2017_64\bin\rcc.exe --name dice --output C:/Users/Petros/projects/QtDice/build/qrc_dice.cpp C:/Users/Petros/projects/QtDice/src/dice.qrc

CMakeFiles\QtDice.dir\src\main.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\main.cpp.obj: ..\src\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/QtDice.dir/src/main.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\main.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\main.cpp
<<

CMakeFiles\QtDice.dir\src\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/main.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\main.cpp
<<

CMakeFiles\QtDice.dir\src\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/main.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\main.cpp.s /c C:\Users\Petros\projects\QtDice\src\main.cpp
<<

CMakeFiles\QtDice.dir\src\qtdice.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\qtdice.cpp.obj: ..\src\qtdice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/QtDice.dir/src/qtdice.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\qtdice.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\qtdice.cpp
<<

CMakeFiles\QtDice.dir\src\qtdice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/qtdice.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\qtdice.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\qtdice.cpp
<<

CMakeFiles\QtDice.dir\src\qtdice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/qtdice.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\qtdice.cpp.s /c C:\Users\Petros\projects\QtDice\src\qtdice.cpp
<<

CMakeFiles\QtDice.dir\src\Dice\dice.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\Dice\dice.cpp.obj: ..\src\Dice\dice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/QtDice.dir/src/Dice/dice.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\Dice\dice.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\Dice\dice.cpp
<<

CMakeFiles\QtDice.dir\src\Dice\dice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/Dice/dice.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\Dice\dice.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\Dice\dice.cpp
<<

CMakeFiles\QtDice.dir\src\Dice\dice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/Dice/dice.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\Dice\dice.cpp.s /c C:\Users\Petros\projects\QtDice\src\Dice\dice.cpp
<<

CMakeFiles\QtDice.dir\src\About\about.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\About\about.cpp.obj: ..\src\About\about.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/QtDice.dir/src/About/about.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\About\about.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\About\about.cpp
<<

CMakeFiles\QtDice.dir\src\About\about.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/About/about.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\About\about.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\About\about.cpp
<<

CMakeFiles\QtDice.dir\src\About\about.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/About/about.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\About\about.cpp.s /c C:\Users\Petros\projects\QtDice\src\About\about.cpp
<<

CMakeFiles\QtDice.dir\src\About\infotab.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\About\infotab.cpp.obj: ..\src\About\infotab.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/QtDice.dir/src/About/infotab.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\About\infotab.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\About\infotab.cpp
<<

CMakeFiles\QtDice.dir\src\About\infotab.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/About/infotab.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\About\infotab.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\About\infotab.cpp
<<

CMakeFiles\QtDice.dir\src\About\infotab.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/About/infotab.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\About\infotab.cpp.s /c C:\Users\Petros\projects\QtDice\src\About\infotab.cpp
<<

CMakeFiles\QtDice.dir\src\Animation\animation.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\Animation\animation.cpp.obj: ..\src\Animation\animation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/QtDice.dir/src/Animation/animation.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\Animation\animation.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\Animation\animation.cpp
<<

CMakeFiles\QtDice.dir\src\Animation\animation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/Animation/animation.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\Animation\animation.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\Animation\animation.cpp
<<

CMakeFiles\QtDice.dir\src\Animation\animation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/Animation/animation.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\Animation\animation.cpp.s /c C:\Users\Petros\projects\QtDice\src\Animation\animation.cpp
<<

CMakeFiles\QtDice.dir\src\Settings\configure.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\src\Settings\configure.cpp.obj: ..\src\Settings\configure.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/QtDice.dir/src/Settings/configure.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\src\Settings\configure.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\src\Settings\configure.cpp
<<

CMakeFiles\QtDice.dir\src\Settings\configure.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/src/Settings/configure.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\src\Settings\configure.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\src\Settings\configure.cpp
<<

CMakeFiles\QtDice.dir\src\Settings\configure.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/src/Settings/configure.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\src\Settings\configure.cpp.s /c C:\Users\Petros\projects\QtDice\src\Settings\configure.cpp
<<

CMakeFiles\QtDice.dir\qrc_dice.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\qrc_dice.cpp.obj: qrc_dice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/QtDice.dir/qrc_dice.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\qrc_dice.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\build\qrc_dice.cpp
<<

CMakeFiles\QtDice.dir\qrc_dice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/qrc_dice.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\qrc_dice.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\build\qrc_dice.cpp
<<

CMakeFiles\QtDice.dir\qrc_dice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/qrc_dice.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\qrc_dice.cpp.s /c C:\Users\Petros\projects\QtDice\build\qrc_dice.cpp
<<

CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.obj: CMakeFiles\QtDice.dir\flags.make
CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.obj: QtDice_autogen\mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/QtDice.dir/QtDice_autogen/mocs_compilation.cpp.obj"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.obj /FdCMakeFiles\QtDice.dir\ /FS -c C:\Users\Petros\projects\QtDice\build\QtDice_autogen\mocs_compilation.cpp
<<

CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QtDice.dir/QtDice_autogen/mocs_compilation.cpp.i"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe > CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Petros\projects\QtDice\build\QtDice_autogen\mocs_compilation.cpp
<<

CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QtDice.dir/QtDice_autogen/mocs_compilation.cpp.s"
	C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.s /c C:\Users\Petros\projects\QtDice\build\QtDice_autogen\mocs_compilation.cpp
<<

# Object files for target QtDice
QtDice_OBJECTS = \
"CMakeFiles\QtDice.dir\src\main.cpp.obj" \
"CMakeFiles\QtDice.dir\src\qtdice.cpp.obj" \
"CMakeFiles\QtDice.dir\src\Dice\dice.cpp.obj" \
"CMakeFiles\QtDice.dir\src\About\about.cpp.obj" \
"CMakeFiles\QtDice.dir\src\About\infotab.cpp.obj" \
"CMakeFiles\QtDice.dir\src\Animation\animation.cpp.obj" \
"CMakeFiles\QtDice.dir\src\Settings\configure.cpp.obj" \
"CMakeFiles\QtDice.dir\qrc_dice.cpp.obj" \
"CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.obj"

# External object files for target QtDice
QtDice_EXTERNAL_OBJECTS =

QtDice.exe: CMakeFiles\QtDice.dir\src\main.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\src\qtdice.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\src\Dice\dice.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\src\About\about.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\src\About\infotab.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\src\Animation\animation.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\src\Settings\configure.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\qrc_dice.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\QtDice_autogen\mocs_compilation.cpp.obj
QtDice.exe: CMakeFiles\QtDice.dir\build.make
QtDice.exe: C:\Qt\5.12.0\msvc2017_64\lib\Qt5Widgetsd.lib
QtDice.exe: C:\Qt\5.12.0\msvc2017_64\lib\Qt5Guid.lib
QtDice.exe: C:\Qt\5.12.0\msvc2017_64\lib\Qt5Cored.lib
QtDice.exe: C:\Qt\5.12.0\msvc2017_64\lib\qtmaind.lib
QtDice.exe: CMakeFiles\QtDice.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Petros\projects\QtDice\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable QtDice.exe"
	"C:\Program Files\CMake\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\QtDice.dir --manifests  -- C:\PROGRA~2\MICROS~3\2017\COMMUN~1\VC\Tools\MSVC\1415~1.267\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\QtDice.dir\objects1.rsp @<<
 /out:QtDice.exe /implib:QtDice.lib /pdb:C:\Users\Petros\projects\QtDice\build\QtDice.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:windows /SUBSYSTEM:WINDOWS /VERBOSE /MANIFEST:NO kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib 
					ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib C:\Qt\5.12.0\msvc2017_64\lib\Qt5Widgetsd.lib C:\Qt\5.12.0\msvc2017_64\lib\Qt5Guid.lib C:\Qt\5.12.0\msvc2017_64\lib\Qt5Cored.lib C:\Qt\5.12.0\msvc2017_64\lib\qtmaind.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\QtDice.dir\build: QtDice.exe

.PHONY : CMakeFiles\QtDice.dir\build

CMakeFiles\QtDice.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\QtDice.dir\cmake_clean.cmake
.PHONY : CMakeFiles\QtDice.dir\clean

CMakeFiles\QtDice.dir\depend: qrc_dice.cpp
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Petros\projects\QtDice C:\Users\Petros\projects\QtDice C:\Users\Petros\projects\QtDice\build C:\Users\Petros\projects\QtDice\build C:\Users\Petros\projects\QtDice\build\CMakeFiles\QtDice.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\QtDice.dir\depend

