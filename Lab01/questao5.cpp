//
// Created by matth on 30/05/2017.
//

#include <stdio.h>
#include <stdlib.h>

int main(){
    int numbers[1000];
    int number1;
    int number2;

    scanf("%d", &number1);

    for (int i = 0; i < number1; i++){
        scanf("%d", numbers[i]);

        int aux = 0;

        for (int j = 0; j < i; j++){
            if (numbers[j] == numbers[i]){
                aux++;
                break;
            }

        }

        if (aux == 0){
            printf("%d", numbers[i]);
        }

        return 0;


    }




}


