
# if(CMAKE_GENERATOR MATCHES "^Visual Studio")
# 	set(CMAKE_CONFIGURATION_TYPES "Debug;Release" CACHE STRING "Configurations")
# endif()
if(NOT CMAKE_BUILD_TYPE)
	set(CMAKE_BUILD_TYPE Debug CACHE STRING "Build Configuration")
endif()
if(CMAKE_GENERATOR MATCHES "^Visual Studio")
	set(CMAKE_CONFIGURATION_TYPES ${CMAKE_BUILD_TYPE} CACHE STRING "Configurations")
endif()

# build type
if("${CMAKE_BUILD_TYPE}!" STREQUAL "Debug!")
	set(XG_BUILD_CFG DEBUG CACHE STRING "Build Configuration")
elseif("${CMAKE_BUILD_TYPE}!" STREQUAL "Release!")
	set(XG_BUILD_CFG RELEASE CACHE STRING "Build Configuration")
else()
	message(FATAL_ERROR "Invalide Configuration")
endif()

