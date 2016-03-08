# VersionUtils.cmake

#
# Modeled heavily after macros for the Log4Cplus project
#

# Get Integrator version macro
# first param - path to include folder, we will rip version from version.h
macro(integrator_get_version _include_PATH vmajor vminor vpatch)
  file(STRINGS "${_include_PATH}/version.h" _integrator_VER_STRING_AUX REGEX ".*#define[ ]+INTEGRATOR_VERSION_STR[ ]+")
  string(REGEX MATCHALL "[0-9]+" _integrator_VER_LIST "${_integrator_VER_STRING_AUX}")
  list(LENGTH _integrator_VER_LIST _integrator_VER_LIST_LEN)
# get each version from list
  if(_integrator_VER_LIST_LEN EQUAL 3)
    list(GET _integrator_VER_LIST 0 ${vmajor})
    list(GET _integrator_VER_LIST 1 ${vminor})
    list(GET _integrator_VER_LIST 2 ${vpatch})
  endif()
endmacro()


