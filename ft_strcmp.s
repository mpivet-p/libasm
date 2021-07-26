section .text
	global ft_strcmp

ft_strcmp:
	mov		rcx, -1
loop:
	inc		rcx
	mov		bl, byte [rdi + rcx]
	mov		dl, byte [rsi + rcx]
	test	dl, dl
	jz		end
	test	bl, bl
	jz		end
	cmp		bl, dl
	je		loop
end:
	sub		bl, dl
	movsx	rax, bl
	ret
