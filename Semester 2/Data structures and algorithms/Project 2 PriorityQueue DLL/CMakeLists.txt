cmake_minimum_required(VERSION 3.21)
project(PriorityQueue_DLLA)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(PriorityQueue_DLLA
        App.cpp
        ExtendedTest.cpp
        ExtendedTest.h
        PriorityQueue.cpp
        PriorityQueue.h
        ShortTest.cpp
        ShortTest.h)
