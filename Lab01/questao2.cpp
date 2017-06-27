#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    int first;
    int second;
    int third;
    int fourth;

    scanf("%d",&first);
    scanf("%d",&second);
    scanf("%d",&third);
    scanf("%d",&fourth);


    char primeira[30];
    char segunda[30];
    char terceira[30];
    char quarta[30];

    scanf("%s",primeira);
    scanf("%s",segunda);
    scanf("%s",terceira);
    scanf("%s",quarta);


    printf("%c",primeira[first]);
    printf("%c",segunda[second]);
    printf("%c",terceira[third]);
    printf("%c",quarta[fourth]);




    return 0;
}
