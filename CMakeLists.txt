cmake_minimum_required(VERSION 3.17)
project(DirScanner)

set(CMAKE_CXX_STANDARD 17)

set(Boost_INCLUDE_DIR /opt/local/libexec/boost/1.69/include)
set(Boost_LIBRARY_DIR /opt/local/libexec/boost/1.69/lib)
find_package(Boost COMPONENTS filesystem REQUIRED)
include_directories(${Boost_INCLUDE_DIR})
link_directories(${Boost_LIBRARY_DIR})

add_executable(DirScanner main.cpp Reader.cpp Reader.h Scanner.cpp Scanner.h)
target_link_libraries( DirScanner ${Boost_LIBRARIES} )