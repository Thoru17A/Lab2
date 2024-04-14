section .data
    numbers db 4, 101, 32, 21, 112, 332, 22, 67
    len equ $-numbers

section .bss
    sum resb 1
    buffer resb 10

section .text
    global _start

_start:
    mov eax, 0 ; Инициализируем сумму
    mov ecx, len ; Инициализируем счетчик

loop:
    dec ecx ; Уменьшаем счетчик
    movzx ebx, byte [numbers+ecx] ; Получаем очередное число
    test bl, 1 ; Проверяем, что число нечетное
    jz next ; Если число четное, переходим к следующему числу
    test ecx, 1 ; Проверяем, что позиция нечетная
    jz next ; Если позиция четная, переходим к следующему числу
    add eax, ebx ; Добавляем число к сумме

next:
    cmp ecx, 0 ; Проверяем, что мы не дошли до начала массива
    jne loop ; Если нет, переходим к следующему числу

    mov [sum], al ; Сохраняем сумму

    ; Преобразуем сумму в строку
    mov eax, [sum]
    call int_to_string

    ; Выводим сумму
    mov eax, 1 ; Системный вызов для write
    mov edi, 1 ; дескриптор файла (stdout)
    mov esi, buffer ; адрес буфера для вывода
    mov edx, 10 ; длина буфера
    syscall

    ; Завершаем программу
    mov eax, 60 ; Системный вызов для exit
    xor edi, edi ; код возврата 0
    syscall

int_to_string:
    mov ecx, 10 ; база системы счисления
    mov edi, buffer + 9 ; указатель на конец буфера
    mov byte [edi], 0 ; завершающий символ

convert_loop:
    xor edx, edx ; очищаем edx для деления
    div ecx ; делим eax на 10
    add dl, '0' ; преобразуем остаток в символ
    dec edi ; перемещаем указатель на предыдущую позицию
    mov [edi], dl ; сохраняем символ в буфер
    test eax, eax ; проверяем, что делимое не равно 0
    jnz convert_loop ; если не равно 0, продолжаем конвертацию

    mov eax, edi ; возвращаем указатель на начало строки
    ret
