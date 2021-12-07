// @Luis Roberto Pérez García
// @Github Nick: WasabiDeEstudiar
// @No. Control: 19211705
// @07/12/2021

#include <stdio.h>
int v []= { 8, 10, - 3};
int v1[]= {4, - 5, 50};
int v2[]= {2, 3, 7};
int v3[]= {19, 21, 17};
int v4[]= {-1, 5, 6};

void main(void)
{
    media(v);
    media(v1);
    media(v2);
    media(v3);
    media(v4);
    
}

void media(int *v)
{
    int media;
    media = 0;
    media = (v[0] + v[1] + v[2]) / 3;
    
    printf ("Media Aritmetica: %d \n", media);
}
