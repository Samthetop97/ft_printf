# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shadir <shadir@student.42berlin.de>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/08/05 02:52:15 by shadir            #+#    #+#              #
#    Updated: 2023/09/13 13:35:05 by shadir           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Source Files
SRC = 	ft_putchar.c ft_putnbr.c ft_putstr.c \
		ft_strlen.c ft_puthexa.c ft_print_s.c \
		ft_printf.c ft_uputnbr.c ft_putaddr.c

#Converting suffix of Source files in Object files
OBJS			= $(SRC:.c=.o)
#Compiler
CC				= cc
#Remove command
RM				= /bin/rm -f
#Flags ('-I' add directory header file)
CFLAGS			= -Wall -Wextra -Werror -I.
#Name of the expected exec file
NAME			= libftprintf.a
#Rule to exec multiple commands at once
all: $(NAME)
#Create a member from '$(OBJS)' in archive '$(NAME)'
#by copying the files from '$(OBJS)'
#The 'c' flag to ar is required if the archive file does not #already exist.
$(NAME): $(OBJS)
		$(CC) $(CFLAGS) -c $(SRC)
		ar -rc $(NAME) $(OBJS)
clean:
		@$(RM) $(OBJS)
fclean:	clean
		@$(RM) $(NAME)

#Cleans the files and remakes the library
re: fclean $(NAME)

.PHONY: all clean fclean re
