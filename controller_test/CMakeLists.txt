cmake_minimum_required(VERSION 3.14)
project(controller)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_OSX_ARCHITECTURES "arm64")

include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest
  GIT_TAG main
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

# Create the executable for the tests
add_executable(
  ${PROJECT_NAME}
  ../controller/keymap.cpp
  keymap_test.cc
  ../controller/utils.cpp
  utils_test.cc
  test.cc
)

# Now you can specify include directories
target_include_directories(${PROJECT_NAME} PRIVATE ../controller)

# Link the libraries
target_link_libraries(
  ${PROJECT_NAME}
  GTest::gtest
  GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(${PROJECT_NAME})
