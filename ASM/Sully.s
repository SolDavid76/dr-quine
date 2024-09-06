bits 64

extern sprintf, fopen, fprintf, fclose, system

section .data
	n dq 5
	openMode db "w", 0
	buffer db 256 dup(0)
	fileName db "Sully_%1$d.s", 0
	exec db "nasm -f elf64 -o Sully_%1$d.o Sully_%1$d.s && gcc -lc -no-pie Sully_%1$d.o -o Sully_%1$d && rm -f Sully_%1$d.o && ./Sully_%1$d", 0
	payload db "bits 64%2$c%2$cextern sprintf, fopen, fprintf, fclose, system%2$c%2$csection .data%2$c	n dq %4$d%2$c	openMode db %3$cw%3$c, 0%2$c	buffer db 256 dup(0)%2$c	fileName db %3$cSully_%%1$d.s%3$c, 0%2$c	exec db %3$cnasm -f elf64 -o Sully_%%1$d.o Sully_%%1$d.s && gcc -lc -no-pie Sully_%%1$d.o -o Sully_%%1$d && rm -f Sully_%%1$d.o && ./Sully_%%1$d%3$c, 0%2$c	payload db %3$c%1$s%3$c, 0%2$c%2$csection .text%2$c	global main%2$c%2$c	main:%2$c		mov rax, n%2$c		cmp BYTE [rax], 0%2$c		jl _exit%2$c%2$c		push rbx%2$c		mov rdi, buffer%2$c		mov rsi, fileName%2$c		mov rdx, [n]%2$c		call sprintf%2$c		pop rbx%2$c%2$c		push rbx%2$c		mov rdi, buffer%2$c		mov rsi, openMode%2$c		call fopen%2$c		pop rbx%2$c%2$c		push rax%2$c		mov rdi, rax%2$c		mov rsi, payload%2$c		mov rdx, payload%2$c		mov rcx, 10%2$c		mov r8, 34%2$c		mov r9, [n]%2$c		sub r9, 1%2$c		call fprintf%2$c		pop rdi%2$c%2$c		push rbx%2$c		call fclose%2$c		pop rbx%2$c%2$c		push rbx%2$c		mov rdi, buffer%2$c		mov rsi, exec%2$c		mov rdx, [n]%2$c		call sprintf%2$c		pop rbx%2$c%2$c		push rbx%2$c		mov rdi, buffer%2$c		call system%2$c		pop rbx%2$c%2$c		mov rax, 0%2$c		ret%2$c%2$c	_exit:%2$c		mov rax, 1%2$c		ret%2$c", 0

section .text
	global main

	main:
		mov rax, n
		cmp BYTE [rax], 0
		jl _exit

		push rbx
		mov rdi, buffer
		mov rsi, fileName
		mov rdx, [n]
		call sprintf
		pop rbx

		push rbx
		mov rdi, buffer
		mov rsi, openMode
		call fopen
		pop rbx

		push rax
		mov rdi, rax
		mov rsi, payload
		mov rdx, payload
		mov rcx, 10
		mov r8, 34
		mov r9, [n]
		sub r9, 1
		call fprintf
		pop rdi

		push rbx
		call fclose
		pop rbx

		push rbx
		mov rdi, buffer
		mov rsi, exec
		mov rdx, [n]
		call sprintf
		pop rbx

		push rbx
		mov rdi, buffer
		call system
		pop rbx

		mov rax, 0
		ret

	_exit:
		mov rax, 1
		ret
