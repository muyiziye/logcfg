%option noyywrap

%{
#include <stdio.h>
%}

%%
^\[[a-zA-Z_][a-zA-Z0-9_]+\]     {printf(" GROUP ");}
^[ \t]+[a-zA-Z_]?[a-zA-Z0-9_]+  {printf(" VAL ");}
[ \t]+"="[ \t]+                   {printf(" EQUAL ");}
[a-zA-Z0-9_/~ \t\.]+$            {printf(" NUM ");}
.                               {/* for other characters, do nothing */}
%%
