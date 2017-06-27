#include <stdio.h>
#include <stdlib.h>

int main()
{
    int m;
    int n;
    int o;
    int p;

    scanf("%d", &m);
    scanf("%d", &n);
    scanf("%d", &o);
    scanf("%d", &p);

    int number1;
    int number2;


    if (abs(m) > abs(n)){
        number1 = m;

    }
    else if(abs(m) == abs(n)){
        if (m > n){
            number1 = m;
        }
        else{
            number1 = n;
        }


    }
    else{
        number1 = n;

    }

    if (abs(o) <= abs(p)){
        number2 = o;
    }
    else if(abs(o) == abs(p)){
        if (o > p){
            number1 = o;
        }
        else{
            number1 = p;
        }
    }
    else{
        number2 = p;

    }

    int result = (number1*number1) - 3*number2 + number1;

    printf("(%d,%d)\n%d", number1, number2, result);


    return 0;
}
