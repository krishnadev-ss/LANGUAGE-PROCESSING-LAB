%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<stdbool.h>
    #include<string.h>
    int stmt,iden,assi,rela,key,inte;

%}


%%
"int"|"float"|"return"|"if"|"else"|"switch"|"break"|"include" { key++;}

[a-zA-Z]+[0-9_]* {iden++;}
">"|"<"|"<="|"=="|"!="|">=" {rela++;}
[0-9] {inte++;}
"=" {assi++;}
; {stmt++;}
. ;


%%
int yywrap(){}

int main(){
    extern FILE *yyin;
    yyin = fopen("exp1.c","r");
    yylex();
    

    printf("statement: %d\n",stmt);
    printf("relational: %d\n",rela);
    printf("keyword: %d\n",key);
    printf("integer: %d\n",inte);
    printf("identifier: %d\n",iden);
    printf("assignment: %d\n",assi);

    fclose(yyin);
    
}