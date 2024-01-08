%{
    #include<stdio.h>

%}

%token NUMBER
%left '+' '-'
%left '*' '/'


%%
stmt: T {printf("valid ecpression: %d\n",$$); exit(0);}
;
T: T '+' T {$$ = $1 + $3;}|
T '-' T {$$ = $1 - $3;}|
T '*' T {$$ = $1 * $3;}|
T '/' T {$$ = $1 / $3;}|
'(' T ')' {$$ = $2;}|
NUMBER
;
%%

int yyerror(char *msg){
    printf("invalid strinf");
    exit(0);
}

int main(){
    printf("enter a asrithmetic exprewsson:");
    yyparse();

}