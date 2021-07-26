NAME= asm
CC= clang
CFLAGS= -g

DEPS= libasm.h
SRCS= main.c
SRCS_ASM= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_strdup.s
OBJS= $(SRCS:.c=.o)
OBJS_ASM= $(SRCS_ASM:.s=.o)
#NASM_OPT=macho64
NASM_OPT=elf64

.PHONY: clean fclean all re

all: $(NAME)

$(NAME): $(OBJS) $(OBJS_ASM)
	$(CC) $(OBJS) $(OBJS_ASM) $(CFLAGS) -o $(NAME)

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -o $@ -c $<

%.o: %.s
	nasm -f $(NASM_OPT) $<

clean:
	rm -rf $(NAME)

fclean: clean
	rm -rf $(OBJS) $(OBJS_ASM)

re: fclean all
