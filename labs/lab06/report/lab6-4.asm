%include 'in_out.asm' ;подключение внешнего файла

SECTION  .data ;секция инициированных данных
  task: DB 'f(x)=5*(x-1)**2',0 
  vvod: DB 'Введите x: ',0
  ans: DB 'ответ: ',0

SECTION .bss ;секция не инициированных данных
  x: RESB 80 ;переменная размером 80 байт

SECTION .text ;код программы
GLOBAL _start ;начало программы
_start: ;точка входа в программу

 mov eax,task ;адрес строки 'task' в 'eax'
 call sprintLF ;вызов подпрограммы печати
 mov eax,vvod ;адрес строки 'vvod' в 'eax'
 call sprint ;вызов подпрограммы печати
 mov ecx,x ;адрес переменной под вводимую строку
 mov edx,80 ;длина вводимой строки
 call sread ;вызов подпрограммы ввода

 mov eax,x ;eax=x
 call atoi ;вызов подпрограммы преобразования ASCII кода в число

 dec eax ;вычитание 1
 mov ebx,eax ;ebx=eax
 mul ebx ; eax=x*х
 mov ebx,5 ;ebx=5
 mul ebx ; eax=x*5
 mov ebx,eax ;ebx=eax

 mov eax, ans ;адрес строки 'ans' в 'eax'
 call sprint ;вызов подпрограммы печати
 mov eax,ebx ;eax=ebх
 call iprintLF ;вызов подпрограммы печати
 call quit ;вызов подпрограммы завершения
