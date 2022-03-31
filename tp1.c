#include <stdio.h>
#include "cdecl.h"

unsigned long calcular_cotizacion (unsigned int, unsigned int);

int main (int arcg, char **argv)
{
    unsigned int cripto = 2;
    unsigned int peso = 3;
    unsigned long resultado = calcular_cotizacion(cripto, peso);
    fprintf(stdout, "%lu \n", resultado);

    return 0;
}