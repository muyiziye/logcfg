#!/bin/bash
########################################################################
# File Name: compile.sh
# Author: LiuYang
# mail: liu-yang91@qq.com
# Created Time: Wed 17 Nov 2021 12:51:43 PM CST
#########################################################################

# create build dir
mkdir -pv build/{bin,relese,debug}


pushd build/debug
cmake ../../src
make -j4 install
popd 
