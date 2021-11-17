set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_DEBUG_POSTFIX d)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# macOS build settings
set(CMAKE_OSX_DEPLOYMENT_TARGET "10.12" CACHE STRING "Minimum OS X deployment version" FORCE)
# TODO(paulh): generate universal builds up front
# set(CMAKE_OSX_ARCHITECTURES arm64 x86_64)

option(AJA_BUILDING_CMAKE "Build NTV2 SDK with version.h generated by CMake" OFF)

option(AJA_BUILD_OPENSOURCE "Build NTV2 SDK as open-source (exclude internal apps/libs)" ON)

option(AJA_BUILD_QT_BASED "Build NTV2 Demos and Apps which depend upon Qt" ON)

option(AJA_BUILD_SHARED "Build NTV2 shared libraries" OFF)

option(AJA_DEPLOY_OUTPUTS "Gather build artifacts into top-level directory, and in bin/lib dirs." OFF)
option(AJA_DEPLOY_SOURCES "Deploy sources into build output directory." OFF)
option(AJA_DEPLOY_HEADERS "Deploy headers into build output directory." OFF)
option(AJA_DEPLOY_LIBS "Deploy dependency libraries (DLL/dylib) into the .exe output directory (Win32) or .app bundle (macOS)." OFF)

# apps/demos/tools
option(AJA_BUILD_APPS "Build AJA NTV2 applications" ON)
option(AJA_BUILD_DEMOS "Build AJA NTV2 Demos" ON)
option(AJA_BUILD_TOOLS "Build AJA NTV2 tools" ON)

# driver
option(AJA_BUILD_DRIVER "Build AJA NTV2 driver" OFF)

# libs
option(AJA_BUILD_LIBS "Build AJA libraries" ON)

# plug-ins
option(AJA_BUILD_PLUGINS "Build AJA Plug-ins" ON)

# unit tests
option(AJA_BUILD_TESTS "Build unit tests" ON)

# QA stuff
option(AJA_BUILD_QA "Build AJA NTV2 QA apps and libs" ON)

# Build ajantv2 open-source SDK
if (AJA_BUILD_OPENSOURCE)
    message("NOTE: Building open-source AJA NTV2 SDK components (MIT License)")

    set(AJA_BUILD_APPS  OFF)
    set(AJA_BUILD_DEMOS  OFF)
    set(AJA_BUILD_TOOLS OFF)

    set(AJA_BUILD_DRIVER OFF)

    set(AJA_BUILD_LIBS  ON)

    set(AJA_BUILD_PLUGINS OFF)

    set(AJA_BUILD_TESTS OFF)

    set(AJA_BUILD_QA OFF)
endif()
