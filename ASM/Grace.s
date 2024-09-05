bits 64

extern fopen, fprintf, fclose

section .data
	fileName db "Grace_kid.s", 0
	openMode db "w", 0
	payload db "bits 64%2$c%2$cextern fopen, fprintf, fclose%2$c%2$csection .data%2$c%3$cfileName db %4$cGrace_kid.s%4$c, 0%2$c%3$copenMode db %4$cw%4$c, 0%2$c%3$cpayload db %4$c%1$s%4$c, 0%2$c%2$c%%macro MAIN 0%2$csection .text%2$c%3$cglobal main%2$c%2$c%3$cmain:%2$c%3$c%3$cmov rdi, fileName%2$c%3$c%3$cmov rsi, openMode%2$c%2$c%3$c%3$cpush rbx%2$c%3$c%3$ccall fopen%2$c%3$c%3$cpop rbx%2$c%2$c%3$c%3$cpush rax%2$c%3$c%3$cmov rdi, rax%2$c%3$c%3$cmov rsi, payload%2$c%3$c%3$cmov rdx, payload%2$c%3$c%3$cmov rcx, 10%2$c%3$c%3$cmov r8, 9%2$c%3$c%3$cmov r9, 34%2$c%2$c%3$c%3$ccall fprintf ; fprintf(file, payload, payload, 10, 9, 34)%2$c%3$c%3$cpop rdi%2$c%2$c%3$c%3$cpush rbx%2$c%3$c%3$ccall fclose%2$c%3$c%3$cpop rbx%2$c%2$c%3$c%3$cmov rax, 0%2$c%3$c%3$cret%2$c%%endmacro%2$c%2$cMAIN%2$c", 0

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
		mov r8, 9
		mov r9, 34

		call fprintf ; fprintf(file, payload, payload, 10, 9, 34)
		pop rdi

		push rbx
		call fclose
		pop rbx

		mov rax, 0
		ret
%endmacro

MAIN
