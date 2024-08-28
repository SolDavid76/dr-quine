SRCS_DIR	=	./

SRC			=	Colleen.c\

SRCS 		=	$(addprefix $(SRCS_DIR), $(SRC))

OBJS_DIR	=	objs/

OBJ			=	$(SRC:.c=.o)

OBJS		=	$(addprefix $(OBJS_DIR), $(OBJ))

GCC			=	gcc -Wall -Wextra -Werror

NAME		=	Colleen

all			:	$(OBJS_DIR) $(NAME)

bonus		:	$(NAME)

$(NAME)		:	$(OBJS)
					$(GCC) $(OBJS) -o $(NAME)

$(OBJS_DIR)%.o: $(SRCS_DIR)%.c
				 	$(GCC) -c $< -o $@

$(OBJS_DIR)	:
					mkdir $(OBJS_DIR)

clean		:
					rm -rf $(OBJS_DIR)

fclean		:	clean
					rm -f $(NAME)

re			:	fclean all

.PHONY		:	all bonus clean fclean re