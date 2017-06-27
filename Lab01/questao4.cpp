#inlude <stdio.h>
#include <stdlib.h>
int primo(int);

int primo(int number){
    int i = 2;
    while (i*i <= number){
        if(number %i == 0){
            return 0;
        }

        i++;

    }
    return 1;
}

int main()
{
    int number1;
    int number2;

    scanf("%d", &number1);

    number2 = number1 + 2;

    if (primo(number2) == 1 && primo(number1) == 1){
        printf("PRIMO CASADO!");

    }
    else if(primo(number1) == 1){
        printf("PRIMO!");
    }else{
        printf("NAO PRIMO!");
    }


    return 0;
}

