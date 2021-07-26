section .text
	extern malloc
	global ft_strdup

ft_strdup:
	mov		rcx, 0
loop:
	mov		dl, byte [rdi + rcx]
	inc		rcx
	test		dl, dl
	jnz		loop
	
	mov		rdx, rdi		; saving string to copy
	mov		rsi, rcx
	call		malloc
	test		rax, rax
	jz		end			; if malloc returns 0 we return 0

copy_loop:
	mov		rcx, 0
	

end:
	ret
	
