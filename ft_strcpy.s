global ft_strcpy

ft_strcpy:
		mov		rcx, -1
_loop:
		inc		rcx
		mov		bl, byte [rsi + rcx]
		mov		byte [rdi + rcx], bl
		test	bl, bl
		jnz		_loop
_end:
		mov		rax, rdi
		ret
