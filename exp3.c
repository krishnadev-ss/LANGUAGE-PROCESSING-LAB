#include<stdio.h>
#include<string.h>

int main(){
    char str[50];
    printf("enter the string:");
    scanf("%s",str);

    int length = strlen(str);
    int state = 0;

    for(int i = 0; i<length;i++){
        if(str[i]=='a'&& state == 0){
            state = 1;
        }
        else if(str[i]=='b'&& state == 0){
            state = 0;
        }
        else if(str[i]=='c'&& state == 0){
            state = 0;
        }
        else if(str[i]=='a'&& state == 1){
            state = 1;
        }
        else if(str[i]=='b'&& state == 1){
            state = 2;
        }
        else if(str[i]=='c'&& state == 1){
            state = 0;
        }
        else if(str[i]=='a'&& state == 2){
            state = 1;
        }
        else if(str[i]=='b'&& state == 2){
            state = 0;
        }
        else if(str[i]=='c'&& state == 2){
            state = 3;
        }
        else if(str[i]=='a'&& state == 3){
            state = 3;
        }
        else if(str[i]=='b'&& state == 3){
            state = 3;
        }
        else if(str[i]=='c'&& state == 3){
            state = 3;
        }
        else{
            state = 5;
        }
    }
    if(state == 3){
        printf("valid");
    }else{
        printf("invalid");
    }

    return 0;
}