#include <stdio.h>
#include "cdecl.h"

unsigned long calcular_cotizacion (unsigned int, unsigned int);

unsigned long cal_cotizacion (unsigned int cripto, unsigned int peso){
    unsigned long resultado = calcular_cotizacion(cripto, peso);
    fprintf(stdout, "%lu \n", resultado);

    return 0;
}