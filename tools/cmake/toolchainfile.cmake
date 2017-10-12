#
# Automatically generated file; DO NOT EDIT.
# CMake toolchain file
#

# In order to allow the toolchain to be relocated, we calculate the
# HOST_DIR based on this file's location: $(HOST_DIR)/usr/share/buildroot
# and store it in RELOCATED_HOST_DIR.
# All the other variables that need to refer to HOST_DIR will use the
# RELOCATED_HOST_DIR variable.
string(REPLACE "/usr/share/buildroot" "" RELOCATED_HOST_DIR ${CMAKE_CURRENT_LIST_DIR})

# Point cmake to the location where we have our custom modules,
# so that it can find our custom platform description.
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR})

set(CMAKE_SYSTEM_NAME Build)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# Set the {C,CXX}FLAGS appended by CMake depending on the build type.
# CMake defaults these variables with -g and/or
# -O options, and they are appended at the end of the argument list,
# so the Buildroot options are overridden. Therefore these variables
# have to be cleared, so that the options passed in CMAKE_C_FLAGS do
# apply.
#
# Note:
#   Do not override any of these flag variables.
set(CMAKE_C_FLAGS_DEBUG "" CACHE STRING "Debug CFLAGS")
set(CMAKE_CXX_FLAGS_DEBUG "" CACHE STRING "Debug CXXFLAGS")
set(CMAKE_C_FLAGS_RELEASE " -DNDEBUG" CACHE STRING "Release CFLAGS")
set(CMAKE_CXX_FLAGS_RELEASE " -DNDEBUG" CACHE STRING "Release CXXFLAGS")

# Build type configuration
set(CMAKE_BUILD_TYPE Release CACHE STRING "Build configuration")

# Defaults flags.
set(CMAKE_C_FLAGS "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -O2" CACHE STRING "Buildroot CFLAGS")
set(CMAKE_CXX_FLAGS "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -O2" CACHE STRING "Buildroot CXXFLAGS")
set(CMAKE_EXE_LINKER_FLAGS "" CACHE STRING "Buildroot LDFLAGS for executables")

set(CMAKE_INSTALL_SO_NO_EXE 0)

set(CMAKE_PROGRAM_PATH "${RELOCATED_HOST_DIR}/usr/bin")
set(CMAKE_SYSROOT "${RELOCATED_HOST_DIR}/usr/x86_64-buildroot-linux-gnu/sysroot")
set(CMAKE_FIND_ROOT_PATH "${RELOCATED_HOST_DIR}/usr/x86_64-buildroot-linux-gnu/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(ENV{PKG_CONFIG_SYSROOT_DIR} "${RELOCATED_HOST_DIR}/usr/x86_64-buildroot-linux-gnu/sysroot")

# This toolchain file can be used both inside and outside Buildroot.
set(CMAKE_C_COMPILER "${RELOCATED_HOST_DIR}/usr/bin/x86_64-buildroot-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER "${RELOCATED_HOST_DIR}/usr/bin/x86_64-buildroot-linux-gnu-g++")
if(0)
  set(CMAKE_Fortran_FLAGS_DEBUG "" CACHE STRING "Debug Fortran FLAGS")
  set(CMAKE_Fortran_FLAGS_RELEASE " -DNDEBUG" CACHE STRING "Release Fortran FLAGS")
  set(CMAKE_Fortran_FLAGS "-O2" CACHE STRING "Buildroot FCFLAGS")
  set(CMAKE_Fortran_COMPILER "${RELOCATED_HOST_DIR}/usr/bin/x86_64-buildroot-linux-gnu-gfortran")
endif()
