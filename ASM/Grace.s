bits 64

extern fopen, fprintf, fclose

section .data
	fileName db "Grace_kid.s", 0
	openMode db "w", 0
	payload db "bits 64%2$c%2$cextern fopen, fprintf, fclose%2$c%2$csection .data%2$c	fileName db %3$cGrace_kid.s%3$c, 0%2$c	openMode db %3$cw%3$c, 0%2$c	payload db %3$c%1$s%3$c, 0%2$c%2$c%%macro MAIN 0%2$csection .text%2$c	global main%2$c%2$c	main:%2$c		mov rdi, fileName%2$c		mov rsi, openMode%2$c%2$c		push rbx%2$c		call fopen%2$c		pop rbx%2$c%2$c		push rax%2$c		mov rdi, rax%2$c		mov rsi, payload%2$c		mov rdx, payload%2$c		mov rcx, 10%2$c		mov r8, 34%2$c%2$c		call fprintf ; fprintf(file, payload, payload, 10, 9, 34)%2$c		pop rdi%2$c%2$c		push rbx%2$c		call fclose%2$c		pop rbx%2$c%2$c		mov rax, 0%2$c		ret%2$c%%endmacro%2$c%2$cMAIN%2$c", 0

%macro MAIN 0
section .text
	global main

	main:
		mov rdi, fileName
		mov rsi, openMode

		push rbx
		call fopen
		pop rbx

		push rax
		mov rdi, rax
		mov rsi, payload
		mov rdx, payload
		mov rcx, 10
		mov r8, 34

		call fprintf ; fprintf(file, payload, payload, 10, 9, 34)
		pop rdi

		push rbx
		call fclose
		pop rbx

		mov rax, 0
		ret
%endmacro

MAIN
