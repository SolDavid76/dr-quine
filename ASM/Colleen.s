bits 64

extern dprintf

;colleen
section .data
	payload db "bits 64%2$c%2$cextern dprintf%2$c%2$c;colleen%2$csection .data%2$c%3$cpayload db %4$c%1$s%4$c, 0%2$c%2$csection .text%2$c%3$cglobal _start%2$c%2$c%3$ccolleen:%2$c%3$c%3$cmov rdi, 1%2$c%3$c%3$clea rsi, [payload]%2$c%3$c%3$clea rdx, [payload]%2$c%3$c%3$cmov rcx, 10%2$c%3$c%3$cmov r8, 9%2$c%3$c%3$cmov r9, 34%2$c%2$c%3$c%3$cpush rbx%2$c%3$c%3$ccall dprintf%2$c%3$c%3$cpop rbx%2$c%2$c%3$c%3$cmov rax, 0%2$c%3$c%3$cret%2$c%2$c%3$c_start:%2$c%3$c%3$ccall colleen%2$c%2$c%3$c%3$cmov rax, 60%2$c%3$c%3$cmov rdi, 0%2$c%3$c%3$csyscall ; exit(0)%2$c", 0

section .text
	global _start

	colleen:
		mov rdi, 1
		lea rsi, [payload]
		lea rdx, [payload]
		mov rcx, 10
		mov r8, 9
		mov r9, 34

		push rbx
		call dprintf
		pop rbx

		mov rax, 0
		ret

	_start:
		call colleen

		mov rax, 60
		mov rdi, 0
		syscall ; exit(0)
