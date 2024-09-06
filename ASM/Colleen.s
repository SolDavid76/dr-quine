bits 64

extern dprintf

;colleen
section .data
	payload db "bits 64%2$c%2$cextern dprintf%2$c%2$c;colleen%2$csection .data%2$c	payload db %3$c%1$s%3$c, 0%2$c%2$csection .text%2$c	global main%2$c%2$c	colleen:%2$c		mov rdi, 1%2$c		mov rsi, payload%2$c		mov rdx, payload%2$c		mov rcx, 10%2$c		mov r8, 34%2$c%2$c		push rbx%2$c		call dprintf%2$c		pop rbx%2$c%2$c		mov rax, 0%2$c		ret%2$c%2$c	main:%2$c		push rbx%2$c		call colleen%2$c		pop rbx%2$c%2$c		mov rax, 0%2$c		ret ; return(0)%2$c", 0

section .text
	global main

	colleen:
		mov rdi, 1
		mov rsi, payload
		mov rdx, payload
		mov rcx, 10
		mov r8, 34

		push rbx
		call dprintf
		pop rbx

		mov rax, 0
		ret

	main:
		push rbx
		call colleen
		pop rbx

		mov rax, 0
		ret ; return(0)
