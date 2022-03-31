; TP1

segment .data

segment .text

calcular_cotizacion:
    push ebp      ; Guardo EBP en la pila 
    mov ebp, esp  ; Apunto ESP al comienzo del frame
    ; Acá reservo espacio para variables automaticas
    sub esp, 4    ; Variable resultado

    ; Salvar los demas registros
    ;push eax  No sabemos si conviene salvar todos los registros o solo esos dos
    ;push ebx
    pusha

    ; Hago el cálculo acá
    mov eax, [ebp + 8]     ; Cargo el segundo parámetro en EAX
    mov ebx, [ebp + 12]    ; Cargo el primer parametro en EBX
    add eax, ebx           ; El valor de retorno vuelve en el registro EAX

    ; Al salir
    popa
    mov esp, ebp   ; Vuelvo el stack pointer al stack frame anterior
    pop ebp
    ret