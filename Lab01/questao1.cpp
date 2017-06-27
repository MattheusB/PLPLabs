#include <stdio.h>
#include <stdlib.h>

int main()
{
    int temp;
    scanf("%d",&temp);

    int cont = 0;

    while(temp != 0){
        if (temp < 0){
            cont++;
        }

        scanf("%d",&temp);


    }

    printf("%d",cont);

    return 0;
}
