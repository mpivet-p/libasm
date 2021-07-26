section .text
	extern malloc
	global ft_strdup

ft_strdup:
	mov		rcx, 0
_loop:
	mov		dl, byte [rdi + rcx]
	inc		rcx
	test	dl, dl
	jnz		_loop
	mov		rdx, rdi		; saving string to copy
	mov		rdi, rcx
	call	malloc
	test	rax, rax
	jz		_end			; if malloc returns 0 we return 0

_copy_loop:
	mov		rcx, 0
    mov     bl, byte [rdx + rcx]
    mov     byte [rax + rcx], bl
    inc     rcx
    test    bl, bl
    jnz     _copy_loop

_end:
	ret
	
