#include<stdio.h>
#include<string.h>
#include<stdbool.h>
#include<ctype.h>

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



int main(){
    char str[100];
    printf("enter the string:");
    scanf("%s",str);

    int state = 0;
    int length = strlen(str);

    for(int i =0;i<length;i++){
        char ch = str[i];
        if(state==0 && isalpha(ch)|| ch == '_'){
            state = 1;
        }
        else if(state == 1  && isalnum(ch)|| ch == '_' ){
            state = 1;

        }
        else{
            state = 2;
        }
    }

    if(state == 1 && !iskeyword(str)){
        printf("valid identifier");
    }
    else{
        printf("invalid identifier");
    }


    return 0;



}


 