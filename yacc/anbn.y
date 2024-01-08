%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token A B NL
%%
stmt: S NL {printf("valid string");
exit(0);}
;
S: A S B |
;
%%

int yyerror(char *msg){
    printf("invalid string:");
    exit(0);
}
int main(){
    printf("enter the string:");
    yyparse();
}