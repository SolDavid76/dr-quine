bits 64

extern fprintf, fputs, fopen, fclose, stderr

section .data
	fileName db "Grace_kid.s", 0
	openMode db "w", 0
	payload db "bits 64%2$c%2$cextern open, dprintf, close%2$c%2$csection .data%2$c%3$cfileName db %4$cGrace_kid.c%4$c, 0%2$c%3$cpayload db %4$c%1$c%4$c, 0%2$c", 0

section .text
	global _start

	_start:
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

		push rbx
		call fprintf
		pop rbx
		pop rdi

		push rbx
		call fclose
		pop rbx

		; mov rax, 2
		; mov rdi, fileName
		; mov rsi, 65
		; mov rdx, 0666
		; syscall

		; mov rdi, rax
		; mov rsi, payload
		; mov rdx, payload
		; mov rcx, 10
		; mov r8, 9
		; mov r9, 34

		; push rbx
		; call dprintf
		; pop rbx

		; mov rax, 3
		; syscall

		mov rax, 60
		mov rdi, 0
		syscall
