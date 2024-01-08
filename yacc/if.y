%{
    #include<stdio.h>
    #include<stdlib.h>

%}

%token IF ELSE EQ REL ID NUM

%%
S : stmt {printf("valid statement"); exit(0);}
;
stmt : IF '(' COND ')' '{' T '}' else
;
else : ELSE '{' T '}'
;

COND : ID REL ID | ID REL NUM | ID EQ NUM | ID EQ ID
;

T: CODE ';' T |
;

CODE : ID '=' ID | ID '=' NUM | ID '+' NUM | ID '-' NUM | ID '+' ID |ID '-' ID| ID '=' NUM '+' NUM
;
%%
int yyerror(char *msg){
    printf("invalid");

}
int main(){
    extern FILE *yyin;
    yyin = fopen("input.txt","r");
    yyparse();
}