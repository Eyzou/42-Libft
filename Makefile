NAME = libft.a
CC = cc
CFLAGS = -g -Wall -Wextra -Werror

SRC = ft_atoi.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_itoa.c \
		ft_intlen.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putnbr_base.c \
		ft_putstr_fd.c \
		ft_split.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_printf.c \
		ft_printfutils.c \
		ft_printfutils2.c \
		ft_lstadd_back.c \
		ft_lstadd_front.c \
		ft_lstclear.c \
		ft_lstdelone.c \
		ft_lstiter.c \
		ft_lstlast.c \
		ft_lstmap.c \
		ft_lstnew.c \
		ft_lstsize.c \
		get_next_line.c \
		get_next_line_utils.c 

OBJ = ${SRC:.c=.o}

RM = rm -rdf

ERASE		=	\033[2K\r 
YELLOW		=	\033[1;33m
GREEN		=	\033[1;32m
END			=	\033[0m

all: ${NAME}

%.o: %.c
	$(CC) $(CFLAGS) -O2 -c $< -o $< -o $@

${NAME}: ${OBJ}
	ar -rcs ${NAME} ${OBJ}
	@echo "$(GREEN)$(NAME) successfully compiled$(END)"

clean:
	$(RM) $(OBJ)
	@echo "$(YELLOW)$(OBJ) Object file removed$(END)"

fclean: clean
	$(RM) $(OBJ) $(NAME)
	@echo "$(YELLOW)$(NAME) removed$(END)"

re: fclean all

.PHONY: all clean fclean re