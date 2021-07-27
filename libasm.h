#ifndef LIBASM_H
# define LIBASM_H

# include <stddef.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
char	*ft_strdup(const char *s);
int		ft_strcmp(const char *s1, const char *s2);
int		ft_read(int fd, char *buf, int size);
size_t	ft_write(int fildes, const void *buf, size_t nbyte);

#endif
