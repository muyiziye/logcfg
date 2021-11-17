/*************************************************************************
	> File Name: ut_main.cpp
	> Author: LiuYang
	> Mail: liuyang91
	> Created Time: Wed 17 Nov 2021 02:02:20 PM CST
 ************************************************************************/

#include <iostream>

using std::cout;
using std::endl;

// This function is come from logCfg.l
extern void t_main();

int main(int argc, char **argv){
    cout << "just to test" << endl;

    t_main();

    return 0;
}
