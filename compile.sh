#!/bin/bash
########################################################################
# File Name: compile.sh
# Author: LiuYang
# mail: liu-yang91@qq.com
# Created Time: Wed 17 Nov 2021 12:51:43 PM CST
#########################################################################

src_path=`pwd`/src

# create build dir
mkdir -pv build/{bin,relese,debug}


pushd build/debug
cmake ${src_path}
make -j4 install
popd 
