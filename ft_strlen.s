section .data

section .text
	global ft_strlen

ft_strlen:
		mov		rax, 0
		test	rdi, rdi
		jz		end_ret
		mov		rax, -1

loop:	inc		rax
		mov		cl, byte [rdi + rax]
		test	cl, cl
		jnz		loop

end_ret:
		ret
