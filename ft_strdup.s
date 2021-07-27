section .text
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	global ft_strdup

ft_strdup:
	call	ft_strlen
	push	rdi
	mov		rdi, rax
	inc		rdi
	call	malloc
	test	rax, rax
	jz		_end			; if malloc returns 0 we return 0
	pop		rdi
	mov		rsi, rdi
	mov		rdi, rax
	call	ft_strcpy
_end:
	ret
