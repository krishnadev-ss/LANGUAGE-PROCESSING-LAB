%{
    #include<stdio.h>
    #include<stdbool.h>
    #include<string.h>
    #include <ctype.h>
    int ccount = 0;
    int wordcount = 0;
    char search[50];
    char s[100];

    int validity(char *msg){
        int len = strlen(msg);
        int len1 = strlen(search);
        if( len != len1 ){
            return 0;
        }
        for(int i = 0;i<len;i++){
            if(strcmp(search,msg)!=0){
                return 0;
            }
        }
        return 1;
        

    }

    int val(){
        int k = 1;
        int len3 = strlen(search);
        for(int i = 0; i<len3;i++){        
            if(isdigit(search[i])!= 0){
                k = 0;
        }
        
    }
    if(k == 0){
            printf("the entered is a digit");
        }
    
    }
%}

%%
[a-zA-Z0-9]+ {if (yyleng > 5 && yyleng < 10) { wordcount++;}
if(validity(yytext) == 1){ printf("found");}; }

"("[0-1]")" {printf("entered date is correct");}
[a-zA-Z0-9]+"@""gmail"".""com" {printf("it is a correct mail id");}
\"[a-zA-Z0-9]+\" {strcat(s,yytext);}
. ;
%%
int yywrap(){}

int main(){
    extern FILE *yyin;
    yyin = fopen("input.txt","r");
    printf("enter the string:");
    scanf("%s",search);
    
    yylex();

    printf("word count : %d\n",wordcount);
    
    printf("concatenated strinfg is: %s",s);
    val();

    return 0;
}