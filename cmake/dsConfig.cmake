include(CMakeFileDependencyMacro)

find_dependency(glfw ds_imgui)

include(${CMAKE_CURRENT_LIST_DIR}/dsTargets.cmake)
