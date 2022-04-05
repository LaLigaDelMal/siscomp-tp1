#include <stdio.h>
#include "cdecl.h"

int calcular(int, int);

int calcular_cotizacion (int cripto, int peso)
{
    int resultado = calcular(cripto, peso);
    fprintf(stdout, "%d \n", resultado);

    return resultado;
}
