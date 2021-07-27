NAME= libasm.a
CC= clang
CFLAGS= -g

DEPS= libasm.h
SRCS= main.c
SRCS_ASM= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_strdup.s ft_open.s
OBJS= $(SRCS:.c=.o)
OBJS_ASM= $(SRCS_ASM:.s=.o)
#NASM_OPT=macho64
NASM_OPT=elf64

.PHONY: clean fclean all re test

all: $(NAME)

$(NAME): $(OBJS) $(OBJS_ASM)
	ar rc $(NAME) $(OBJS) $(OBJS_ASM)

test: $(NAME) $(DEPS)
	$(CC) $(OBJS) $(CFLAGS) -o test_asm -L. -lasm
	@./test_asm

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -o $@ -c $<

%.o: %.s
	nasm -f $(NASM_OPT) $<

clean:
	rm -rf $(NAME) test_asm

fclean: clean
	rm -rf $(OBJS) $(OBJS_ASM)

re: fclean all
