# Project setup, this is a library project
cmake_minimum_required(VERSION 3.0)
project(integrator)
enable_language(CXX)

# set versions
set(VERSION 1.1.1-SNAPSHOT)

# bring log4cplus includes onto our path
include_directories(/usr/local/include/log4cplus/)
include_directories(${PROJECT_SOURCE_DIR}/include)

# add directories that the linker should use when searching for libraries
link_directories(/usr/local/bin)

# Build the library
add_library(integrator-${VERSION} SHARED include/integrator.h src/integrator.cpp)
target_link_libraries(integrator-${VERSION} cyglog4cplus-1-2-5.dll)

# Installing to a separate directory
install(TARGETS integrator-${VERSION} DESTINATION bin)
install(DIRECTORY include/ DESTINATION include/${PROJECT_NAME}
        FILES_MATCHING PATTERN "*.h")


# Thoughts & notes:
#
# I should also play with the EXPORT option of the install command. https://cmake.org/cmake/help/v3.0/command/install.html?highlight=install#command:install
#
# I should setup versioning here so that the install stuff takes the version into account like log4cplus does.
