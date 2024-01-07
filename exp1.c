
#include<stdio.h>
#include<string.h>
int main(){
    char str[20];
    printf("enter the string:");
    scanf("%s",str);
    int length = strlen(str);
    int state = 0;
    for(int i= 0;i<length;i++){
        if(str[i]=='0' && state == 0){
            state = 1;
        }
        else if(str[i]=='1'&& state == 0){
            state = 0;
        }
        else if(str[i]=='0'&& state == 1){
            state = 2;
        }
        else if(str[i]=='1'&& state == 1){
            state = 0;
        }
        else if(str[i]=='1'&& state == 2){
            state = 2;
        }
        else if(str[i]=='0'&& state == 2){
            state = 2;
        }
        else{
            state = 5;
        }
        

    }
    if (state == 2){
        printf("valid string");
    }
    else{
        printf("invalid string");
    }
    
    return 0;
}