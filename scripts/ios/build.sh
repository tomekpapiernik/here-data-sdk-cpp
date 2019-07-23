#!/bin/bash
mkdir -p build && cd build
cmake ../ -GXcode -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchains/iOS.cmake -DPLATFORM=iphoneos -DEDGE_SDK_ENABLE_TESTING=NO -DSIMULATOR=YES
xcodebuild
cd ..