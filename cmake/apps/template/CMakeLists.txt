add_executable(main
    ${CMAKE_SOURCE_DIR}/apps/template/Main.cpp 
    ${CMAKE_SOURCE_DIR}/apps/template/MainWindow.h
    ${CMAKE_SOURCE_DIR}/apps/template/MainWindow.cpp
)

target_link_libraries(main PRIVATE ds::cg)
target_compile_features(main PRIVATE cxx_std_20)
set_target_properties(main PROPERTIES CXX_EXTENSIONS OFF)
