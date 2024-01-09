%{
    #include<stdio.h>
%}

%token EQ,REL,ID,NUM,FOR,INC;

%%
S:stmt {printf("for loop is valif");}
;
stmt:FOR'('INIT';'COND';'INCR')' '{' T '}'
;
INIT : INT ID '=' NUM
;
COND: ID '<' NUM|
ID '>' NUM|
ID '<' ID|
ID '>' ID
;
INCR : ID INC
T: CODE ';' T|
;
CODE: ID'='ID|
ID '=' ID
;




%%

int yyerror(char *msg){
    printf("invalid string");
    return 0;
}
}

int main(){
    extern FILE *yyin;
    yyin = fopen("input.txt","r");
    yyparse();
}