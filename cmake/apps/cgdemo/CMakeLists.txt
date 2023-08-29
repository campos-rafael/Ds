set(source_files
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/AbstractParser.cpp
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/Buffer.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/Expression.cpp  
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/FileBuffer.h    
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/ReaderBase.h     
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/Scope.cpp
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/AbstractParser.h    
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/ErrorHandler.cpp  
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/Expression.h    
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/SceneReader.cpp  
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/Scope.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/Buffer.cpp 
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/ErrorHandler.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/FileBuffer.cpp  
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/ReaderBase.cpp  
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/SceneReader.h    
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/reader/StringRef.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/RayTracer.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/RayTracer.cpp
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/SceneWriter.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/SceneWriter.cpp
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/Writer.h
  ${CMAKE_SOURCE_DIR}/../apps/cgdemo/Writer.cpp)

add_library(ds-cg-util STATIC ${source_files})
target_include_directories(ds-cg-util PUBLIC  ${CMAKE_SOURCE_DIR}/../cg/include)
target_compile_features(ds-cg-util PUBLIC cxx_std_20)
