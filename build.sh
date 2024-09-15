#!/bin/bash
ROOT_PATH=$(dirname $(readlink -f $0))

# 编译server
rm -r $ROOT_PATH/build
mkdir $ROOT_PATH/build
cd $ROOT_PATH/build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j

# 编译client
CLIENT_ROOT=$ROOT_PATH/rucbase_client
rm -r $CLIENT_ROOT/build
mkdir $CLIENT_ROOT/build
cd $CLIENT_ROOT/build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make -j
