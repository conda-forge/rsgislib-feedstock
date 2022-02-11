#!/bin/bash

mkdir build && cd build

cmake -D CMAKE_INSTALL_PREFIX=${PREFIX} \
    -D Python_EXECUTABLE=$PYTHON \
    -D CMAKE_FIND_FRAMEWORK=NEVER \
    -D CMAKE_PREFIX_PATH=${PREFIX} \
    -D BOOST_INCLUDE_DIR=${PREFIX}/include \
    -D BOOST_LIB_PATH=${PREFIX}/lib \
    -D GDAL_INCLUDE_DIR=${PREFIX}/include \
    -D GDAL_LIB_PATH=${PREFIX}/lib \
    -D HDF5_INCLUDE_DIR=${PREFIX}/include \
    -D HDF5_LIB_PATH=${PREFIX}/lib \
    -D GSL_INCLUDE_DIR=${PREFIX}/include \
    -D GSL_LIB_PATH=${PREFIX}/lib \
    -D MUPARSER_INCLUDE_DIR=${PREFIX}/include \
    -D MUPARSER_LIB_PATH=${PREFIX}/lib \
    -D KEA_INCLUDE_DIR=${PREFIX}/include \
    -D KEA_LIB_PATH=${PREFIX}/lib \
    -D CMAKE_BUILD_TYPE=Release \
    ${SRC_DIR}

make install -j$CPU_COUNT
