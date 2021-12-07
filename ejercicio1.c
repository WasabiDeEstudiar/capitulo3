// @Luis Roberto Pérez García
// @Github Nick: WasabiDeEstudiar
// @No. Control: 19211705
// @07/12/2021


#include <stdio.h>
// @se crea el vector
int v []= { 8, 10, - 3, 4, - 5, 50, 2, 3 };
// main
void main(void)
{
    int min, i;
    min = v[0];
    for (i=0; i<8; i++){
        if (v[i] < min){
            min = v[i];
            
        }
    }
  // @salida
    printf ("Minimo: %d", min);
}
