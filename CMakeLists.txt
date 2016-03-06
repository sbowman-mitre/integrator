# Project setup, this is a library project
cmake_minimum_required(VERSION 3.0)
project(integrator)
enable_language(CXX)

# bring log4cplus includes onto our path
include_directories(/usr/local/include/log4cplus/)
include_directories(${PROJECT_SOURCE_DIR}/include)

# add directories that the linker should use when searching for libraries
link_directories(/usr/local/bin)

# Build the library
add_library(integrator SHARED include/integrator.h src/integrator.cpp)
target_link_libraries(integrator cyglog4cplus-1-2-5.dll)

# Installing to a separate directory
install(TARGETS integrator DESTINATION bin)
install(DIRECTORY include/ DESTINATION include/${PROJECT_NAME}
        FILES_MATCHING PATTERN "*.h")


# Thoughts & notes:
