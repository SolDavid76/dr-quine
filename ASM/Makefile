SRCS_DIR	=	./

SRC			=	Colleen.s\
				Grace.s\
				Sully.s\

SRCS 		=	$(addprefix $(SRCS_DIR), $(SRC))

OBJS_DIR	=	objs/

OBJ			=	$(SRC:.s=.o)

OBJS		=	$(addprefix $(OBJS_DIR), $(OBJ))

GCC			=	gcc -lc -no-pie

NASM		=	nasm -f elf64

NAME		=	$(SRC:.s=)

all			:	$(OBJS_DIR) $(NAME)

bonus		:	$(NAME)

$(NAME)		:	%: $(OBJS_DIR)%.o
					$(GCC) -o $@ $<

$(OBJS_DIR)%.o: $(SRCS_DIR)%.s
				 	$(NASM) -o $@ $<

$(OBJS_DIR)	:
					mkdir $(OBJS_DIR)

clean		:
					rm -rf $(OBJS_DIR) Grace_kid.s Sully_*

fclean		:	clean
					rm -f $(NAME)

re			:	fclean all

.PHONY		:	all bonus clean fclean re
