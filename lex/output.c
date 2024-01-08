
#include<stdio.h>
#include<string.h>
int main()begin
    char str[20];
    printf("enter the string:");
    scanf("%s",str);
    int length = strlen(str);
    int state = 0;
    for(int i= 0;i<length;i++)begin
        if(str[i]=='0' && state == 0)begin
            state = 1;
        end
        else if(str[i]=='1'&& state == 0)begin
            state = 0;
        end
        else if(str[i]=='0'&& state == 1)begin
            state = 2;
        end
        else if(str[i]=='1'&& state == 1)begin
            state = 0;
        end
        else if(str[i]=='1'&& state == 2)begin
            state = 2;
        end
        else if(str[i]=='0'&& state == 2)begin
            state = 2;
        end
        elsebegin
            state = 5;
        end
        

    end
    if (state == 2)begin
        printf("valid string");
    end
    elsebegin
        printf("invalid string");
    end
    
    return 0;
end