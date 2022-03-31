#include <stdio.h>
#include "cdecl.h"

unsigned long calcular_cotizacion (unsigned int, unsigned int);

int main (int arcg, char **argv)
{
    unsigned int cripto = 2;
    unsigned int peso = 3;
    printf (calcular_cotizacion(cripto, peso));

    return 0;
}