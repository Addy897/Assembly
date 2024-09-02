section .data
	msg db "Hello, World!",0xa 
	len db 14 
section .text
global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,msg
	mov edx,[len]
	;exit call
	int 80h
	mov eax,1
	mov ebx,254
	int 80h
