%include 'in_out.asm'

SECTION .data
msg db "Результат: ",0
msg1 db "Функци: f(x)=3*(x+2)",0h

SECTION .text
global _start
_start:

mov eax,msg1
call sprintLF

pop ecx 
pop edx 
sub ecx,1 
mov esi, 0 

next:
cmp ecx,0h 
jz _end 
pop eax 
call atoi
add eax,2
mov ebx,3
mul ebx
add esi,eax

loop next

_end:
mov eax, msg 
call sprint
mov eax, esi 
call iprintLF 
call quit 