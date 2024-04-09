cmake_minimum_required(VERSION 3.25)

set(namespace "ds")
project(Ds LANGUAGES CXX CUDA C VERSION 1.0.0)

include(GNUInstallDirs)

# Fetches and builds ImGui
include(third-party.cmake)

# Adds the ds-cg-util library  
add_subdirectory(apps)

set(cg_header_files
    # core directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/AllocableObject.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/Array.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/BlockAllocable.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/BlockAllocator.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/ContentHolder.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/Exception.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/Flags.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/Globals.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/List.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/ListBase.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/NameableObject.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/ObjectList.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/ObjectPool.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/SharedObject.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/SoA.h
  ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/core/StandardAllocator.h
    # debug directory
    ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/debug/AnimatedAlgorithm.h

    # geometry directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Bounds2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Bounds3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/BVH.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Grid2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Grid3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/GridBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Index2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Index3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/IndexList.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Intersection.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/KNNHelper.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Line.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/MeshSweeper.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Octree.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Point2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Point3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointArray.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointGrid2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointGrid3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointGridBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointHolder.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointOctree.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointQuadtree.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/PointTreeBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Quad.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Quadtree.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Ray.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/TreeBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/Triangle.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/TriangleMesh.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/geometry/TriangleMeshBVH.h

   # graph directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/CameraProxy.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/Component.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/ComponentProxy.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/LightProxy.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/PrimitiveProxy.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/Scene.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/SceneNode.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/SceneObject.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/SceneObjectBuilder.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/SceneWindow.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graph/Transform.h
  
   # graphics directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Actor.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Application.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Assets.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/AssetFolder.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Camera.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Color.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLBuffer.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLFramebuffer.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLGraphics2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLGraphics3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLGraphicsBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLImage.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLMesh.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLMeshRenderer.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLProgram.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLRenderer.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLRendererBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLRenderWindow2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLRenderWindow3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLTextureFramebuffer.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/GLWindow.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Image.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Light.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Material.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Primitive.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/PrimitiveBVH.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/PrimitiveMapper.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Renderer.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/SceneBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/SceneEditor.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/SceneWindowBase.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/Shape.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/TransformableObject.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/TriangleMeshMapper.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/graphics/TriangleMeshShape.h

# math directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Matrix3x3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Matrix4x4.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Quaternion.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Real.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/RealLimits.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Vector2.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Vector3.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/math/Vector4.h

   # utils directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/utils/MeshReader.h
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/include/utils/Stopwatch.h
)

set(cg_source_files
    # core files
    ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/core/BlockAllocator.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/core/Exception.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/core/NameableObject.cpp
  
   # debug directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/debug/AnimatedAlgorithm.cpp

  # geometry directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/geometry/BVH.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/geometry/MeshSweeper.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/geometry/TriangleMesh.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/geometry/TriangleMeshBVH.cpp
   
   # graph directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/CameraProxy.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/Component.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/LightProxy.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/PrimitiveProxy.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/SceneObject.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/SceneObjectBuilder.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/SceneWindow.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graph/Transform.cpp
  
   # graphics directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Application.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Assets.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/AssetFolder.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Camera.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Color.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLFramebuffer.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLGraphics2.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLGraphics3.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLGraphicsBase.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLImage.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLMesh.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLMeshRenderer.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLProgram.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLRenderer.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLRendererBase.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLRenderWindow2.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLRenderWindow3.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLTextureFramebuffer.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/GLWindow.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Image.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Light.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Primitive.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/PrimitiveBVH.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/PrimitiveMapper.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Renderer.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/SceneEditor.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/SceneWindowBase.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/Shape.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/TransformableObject.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/TriangleMeshMapper.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/graphics/TriangleMeshShape.cpp
  
   # utils directory
   ${CMAKE_CURRENT_SOURCE_DIR}/../cg/src/utils/MeshReader.cpp
)

add_library(ds_cg STATIC ${cg_header_files} ${cg_source_files})

target_include_directories(ds_cg PUBLIC 
 $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/../cg/include>
 $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

target_compile_features(ds_cg PRIVATE cxx_std_20)
target_link_libraries(ds_cg PUBLIC glfw ds_imgui gl3w)

if(DEFINED CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
 message(
  STATUS
  "CMAKE_INSTALL_PREFIX is not set.\n"
  "Default value: ${CMAKE_INSTALL_PREFIX}\n"
  "Will set it to ${CMAKE_BINARY_DIR}/install"
  )
 set(CMAKE_INSTALL_PREFIX
  ${CMAKE_BINARY_DIR}/install
  CACHE PATH "Where the library will be installed to" FORCE
  )
else()
 message(
  STATUS
  "CMAKE_INSTALL_PREFIX was already set.\n"
  "Current value: ${CMAKE_INSTALL_PREFIX}"
  )
endif()

set_target_properties(ds_cg PROPERTIES PUBLIC_HEADER "${cg_header_files}")

foreach(header ${cg_header_files})
 file(RELATIVE_PATH header_file_path "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_INCLUDEDIR}" "${header}")
 get_filename_component(header_directory_path "${header_file_path}" DIRECTORY)
 get_filename_component(header_filename "${header_file_path}" NAME)
 string(REPLACE "/" ";" DIR_LIST ${header_directory_path})
 list(LENGTH DIR_LIST DIR_LIST_LENGTH)
 math(EXPR LAST_INDEX "${DIR_LIST_LENGTH} - 1")
 list(GET DIR_LIST ${LAST_INDEX} last_dir)
 install(
  FILES ${header}
  DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${last_dir}"
  )
endforeach()


install(TARGETS ds_cg glfw ds_imgui 
 EXPORT "${PROJECT_NAME}Targets"
 PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
 INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install(EXPORT "${PROJECT_NAME}Targets" 
 FILE "${PROJECT_NAME}Targets.cmake"
 NAMESPACE ${namespace}::
 DESTINATION cmake)

include(CMakePackageConfigHelpers)

write_basic_package_version_file(
 "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
 VERSION ${version}
 COMPATIBILITY AnyNewerVersion)

# create config file
configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
 "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
  INSTALL_DESTINATION cmake
)

# install config files
install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}ConfigVersion.cmake"
    DESTINATION cmake
)
# generate the export targets for the build tree
export(EXPORT "${PROJECT_NAME}Targets"
    FILE "${CMAKE_CURRENT_BINARY_DIR}/cmake/${PROJECT_NAME}Targets.cmake"
    NAMESPACE ${namespace}::
)
