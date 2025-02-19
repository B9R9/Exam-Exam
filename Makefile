# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ghorvath <ghorvath@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/01 15:45:36 by briffard          #+#    #+#              #
#    Updated: 2021/12/09 17:03:59 by ghorvath         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= EXAM-EXAM

SRC=./src/*.c
OBJ= $(SRC:.c=.o)
INCL= ./include/libexam.h

CC= gcc
CCFLAGS= -Werror -Wall -Wextra

RM= rm -f


#COMPILATION of mainfiles

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CCFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CCFLAGS) -o $@ -c $< -I$(INCL)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

#Submission Part
submit:
	#check the compilation and the file
	#run the norminette
