#ifndef LIBASM_H
# define LIBASM_H

# include <stddef.h>
# include <string.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
int		ft_add(int a, int b);
size_t	ft_write(int fildes, const void *buf, size_t nbyte);

#endif
