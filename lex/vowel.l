%{
    #include<stdio.h>
    #include<stdlib.h>

    int vcount = 0;
    int ccount = 0;
%}

%%


[aeiouAEIOU] {vcount++;}
[a-zA-Z] {ccount++;}
\n {printf("vowel count: %d\n",vcount);
printf("consonant count: %d",ccount);
exit(0);}

%%


int yywrap(){}

int main(){
    printf("enter the string:");
    yylex();

    return 0;
}