%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>
    #include<stdbool.h>
    bool iskeyword(char *word){
    char keyword[][32] = {
        "break", "case", "char", "const","do", "double", "else", "float", "for", "goto", "if",
        "int", "long", "short", "sizeof", "static","struct", "switch", "typedef", "bool","void", "while","return","continue","default"
    };
    int leng = sizeof(keyword)/sizeof(keyword[0]);

    for(int i=0;i<leng;i++){
        if(strcmp(word,keyword[i])==0){
            return true;
        }
    }
    return false;
}

%}

%%

^[a-zA-Z_]+[0-9]*$ {if(iskeyword(yytext)){printf("invalid\n"); exit(0);} else{printf("valid identifier"); exit(0);}}
^[^a-zA-Z_] {printf("invalid");exit(0);}
. {printf("invalid");exit(0);}


%%
int yywrap(){}

int main(){
    printf("enter tje word: ");
    yylex();
}