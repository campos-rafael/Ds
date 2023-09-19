add_executable(main
    ${CMAKE_SOURCE_DIR}/../apps/template/Main.cpp 
    ${CMAKE_SOURCE_DIR}/../apps/template/MainWindow.h
    ${CMAKE_SOURCE_DIR}/../apps/template/MainWindow.cpp
)


message(CMAKE_SOURCE_DIR = "${CMAKE_SOURCE_DIR}")
target_include_directories(main PUBLIC ${CMAKE_SOURCE_DIR}/../cg/include)
target_include_directories(main PUBLIC ${CMAKE_SOURCE_DIR}/../cg/externals/include)

target_link_libraries(main PRIVATE ds_cg)
target_compile_features(main PRIVATE cxx_std_20)
set_target_properties(main PROPERTIES CXX_EXTENSIONS OFF)
