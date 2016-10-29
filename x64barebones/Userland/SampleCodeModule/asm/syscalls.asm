GLOBAL _syscall

section .text

;rdi, rsi, rdx, rcx
_syscall:
	mov rax, rdi ;syscall

	mov rbx, rsi 	;1° param syscall
	mov [aux], rcx 
	mov rcx, rdx	;2° param syscall
	mov rdx, [aux]	;3° param syscall

	int 80h

	ret


section .bss
	aux resq 1