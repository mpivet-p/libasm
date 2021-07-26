extern __errno_location

section .text
	global ft_write

ft_write:
	mov		rax, 1
	syscall
	cmp		rax, 0
	jge		end

error:
	neg		rax
	mov		rdi, rax
	call		__errno_location
	mov		[rax], rdi
	mov		rax, -1

end:
	ret
