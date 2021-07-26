global ft_strcpy

ft_strcpy:
		mov		rcx, -1
_loop:
		inc		rcx
		mov		dl, byte [rsi + rcx]
		mov		byte [rdi + rcx], dl
		test	dl, dl
		jnz		_loop
_end:
		mov		rax, rdi
		ret
