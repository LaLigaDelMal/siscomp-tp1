; TP1

segment .data

segment .text

main:
    push ebp      ; Guardo EBP para poder modificar 
    mov ebp, esp
    ; Acá reservo espacio para variables automaticas
