#include "libasm.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int		main(void)
{
	char buf[32];
	char *ret;
	int		fd;
	int		read_ret;

	printf("\e[36;1m===== FT_STRLEN =====\e[0m\n");
	//EXPECTED
	printf("\e[97;1m%d\e[0m\n", (int)strlen("123456789"));
	//MINE
	printf("%d\n", (int)ft_strlen("123456789"));

	printf("\e[36;1m===== FT_STRCPY =====\n");
	//EXPECTED
	ret = strcpy(buf, "Ceci est un test");
	printf("\e[97;1m%s %s\e[0m\n", buf, ret);
	bzero(buf, 32);
	//MINE
	ret = ft_strcpy(buf, "Ceci est un test");
	printf("%s %s\n", buf, ret);

	printf("\e[36;1m===== FT_STRCMP =====\n");
	//EXPECTED
	printf("\e[97;1m%d", strcmp("Phrase de test", "Phrase de test"));
	printf(" %d\e[0m\n", strcmp("Phrase de tet", "Phrase de test"));
	//MINE
	printf("%d", ft_strcmp("Phrase de test", "Phrase de test"));
	printf(" %d\n", ft_strcmp("Phrase de tet", "Phrase de test"));
	
	printf("\e[36;1m===== FT_WRITE =====\e[0m\n");
	//EXPECTED
	write(1, "123456789\n", 10);
	//MINE
	ft_write(1, "123456789\n", 10);

	printf("\e[36;1m===== FT_STRDUP =====\n");
	//EXPECTED
    ret = strdup("Test");
    printf("\e[97;1m[%p] '%s'\e[0m\n", ret, ret);
	ret = NULL;
	//MINE
    ret = ft_strdup("Test");
    printf("[%p] '%s'\n", ret, ret);

	printf("\e[36;1m===== FT_READ =====\n");
	//EXPECTED
	fd = open("Makefile", O_RDONLY);
	//fd = -1;
	if ((read_ret = read(fd, buf, 31)) >= 0)
	{
		buf[read_ret] = 0;
		printf("\e[97;1m%s\e[0m\n", buf);
	}
	else
		perror("libasm");
	bzero(buf, 32);

	//MINE
	fd = open("Makefile", O_RDONLY);
	//fd = -1;
	if ((read_ret = ft_read(fd, buf, 31)) >= 0)
	{
		buf[read_ret] = 0;
		printf("%s\n", buf);
	}
	else
		perror("libasm");

	return (0);
}
