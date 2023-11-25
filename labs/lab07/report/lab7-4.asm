%include 'in_out.asm'

section .data
 msg1 db 'Введите x: ',0h
 msg2 db 'Введите а: ',0h
 msg db 'answer ',0h

section .bss
 x resb 10
 a resb 10

section .text
global _start
_start:

 mov eax,msg1
 call sprint

 mov ecx,x
 mov edx,10
 call sread
 mov eax,x
 call atoi
 mov [x],eax

 mov eax,msg2
 call sprint

 mov ecx,a
 mov edx,10
 call sread
 mov eax,a
 call atoi
 mov [a],eax

 mov eax, [a]
 mov ecx, [x]
 cmp eax,ecx
 je ifravn
 add eax,ecx
 jmp fin

ifravn:
 mov ebx,6
 mul ebx

fin:
mov ebx,eax
mov eax, msg
call sprint
mov eax,ebx
call iprintLF 
call quit 
