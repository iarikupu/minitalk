# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iarikupu <iarikupu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/14 18:17:41 by iarikupu          #+#    #+#              #
#    Updated: 2021/11/15 14:56:19 by iarikupu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

$(NAME) : minitalk

all : 
		make -C libft
		gcc -Wall -Werror -Wextra server.c ./libft.a -o server
		gcc -Wall -Werror -Wextra client.c ./libft.a -o client

clean :
		rm -f ./libft/*.o
		rm  -f server client

fclean : clean
		rm -f ./libft.a

re : fclean all
.PHONY: all clean fclean re
