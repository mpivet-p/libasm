section .text
	extern __errno_location
	global ft_read

ft_read:
	mov		rax, 0xffffffffffff
	xor		eax, eax
	syscall	
	cmp		eax, 0
	jge		_ret
	neg		rax
	mov		rdi, rax
	call	__errno_location
	mov		[rax], rdi
	mov		eax, -1
_ret:
	ret
