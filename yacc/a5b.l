%{
    #include "y.tab.h"
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}

%%
a {return A;}
b {return B;}
\n {return NL;}
. {printf("invalid input"); exit(0);}
%%

int yywrap(){
    return 1;
}

//here lex file used is a5b.l