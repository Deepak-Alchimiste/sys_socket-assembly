BITS 64

extern printf

global _main

section .rodata
	print_result db 'Value of socket => %d', 10, 0

section .text ; Code principal
	

_main:
	mov rax, 41
	mov rdi, 2 
	mov rsi, 1
	mov rdx, 0
	syscall
	mov rdi, print_result ; RDI = Valeur de sortie
	mov rsi, rax ; RSI = Pointe vers RAX
	call printf
	syscall
	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
