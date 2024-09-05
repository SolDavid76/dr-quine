bits 64

extern dprintf

;colleen
section .data
	payload db "bits 64%2$c%2$cextern dprintf%2$c%2$c;colleen%2$csection .data%2$c%3$cpayload db %4$c%1$s%4$c, 0%2$c%2$csection .text%2$c%3$cglobal main%2$c%2$c%3$ccolleen:%2$c%3$c%3$cmov rdi, 1%2$c%3$c%3$cmov rsi, payload%2$c%3$c%3$cmov rdx, payload%2$c%3$c%3$cmov rcx, 10%2$c%3$c%3$cmov r8, 9%2$c%3$c%3$cmov r9, 34%2$c%2$c%3$c%3$cpush rbx%2$c%3$c%3$ccall dprintf%2$c%3$c%3$cpop rbx%2$c%2$c%3$c%3$cmov rax, 0%2$c%3$c%3$cret%2$c%2$c%3$cmain:%2$c%3$c%3$cpush rbx%2$c%3$c%3$ccall colleen%2$c%3$c%3$cpop rbx%2$c%2$c%3$c%3$cmov rax, 0%2$c%3$c%3$cret ; return(0)%2$c", 0

section .text
	global main

	colleen:
		mov rdi, 1
		mov rsi, payload
		mov rdx, payload
		mov rcx, 10
		mov r8, 9
		mov r9, 34

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
