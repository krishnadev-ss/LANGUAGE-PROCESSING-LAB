%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>
%}

%%
"{" {fprintf(yyout,"%s","begin");}
"}" {fprintf(yyout,"%s","end");}
. {fprintf(yyout,"%s",yytext);}
%%
int yywrap() {}
int main(){
    extern FILE *yyin,*yyout;
    yyin = fopen("exp1.c","r");
    yyout = fopen("output.c","w");
    yylex();

    return 0;
}