%option noyywrap
%x COMMENT

%{
#include <stdio.h>
#include "test.h"
%}

%%
#                               {BEGIN COMMENT;}
<COMMENT>\n                     {printf(" ignore comments \n");BEGIN INITIAL;}
<COMMENT>[^#]|.                 {/*Do nothing*/}
^\[[a-zA-Z_][a-zA-Z0-9_]{0,9}\] {printf(" GROUP ");}
^[ \t]+[a-zA-Z_]?[a-zA-Z0-9_]+  {printf(" VAL ");}
[ \t]+"="[ \t]+                 {printf(" EQUAL ");}
[a-zA-Z0-9_/~ \t\.]+$           {printf(" NUM ");}
.                               {/* for other characters, do nothing */}
%%


int t_main(){
    printf(" just call t_main\n");
    yylex();
    return 0;
}