%{
#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>
#include<string.h>
int ccount = 0;
int lcount = 0;
int wcount = 0;
int flag = 0;
int scount = 0;
%}

%%
\n { lcount++; }
[ \t] { scount++; }
[a-zA-Z]+ { wcount++; ccount += yyleng; }
. { ccount++; }
%%

int yywrap() {}

int main() {
    extern FILE *yyin;
    yyin = fopen("c.txt", "r");
    if (yyin == NULL) {
        fprintf(stderr, "Error opening c.txt\n");
        return 1;
    }
    yylex();
    fclose(yyin);

    printf("Character count is: %d\n", ccount);
    printf("Line count is: %d\n", lcount);
    printf("Word count is: %d\n", wcount);
    printf("Space count is: %d\n", scount);

    return 0;
}
