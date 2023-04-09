# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lwidmer <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/09 15:45:40 by lwidmer           #+#    #+#              #
#    Updated: 2023/04/09 15:51:10 by lwidmer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

test_three:
	bash three_checker.sh
	bash three_checker_wc.sh

test_four:
	bash four_checker.sh
	bash four_checker_wc.sh

test_five:
	bash five_checker.sh
	bash five_checker_wc.sh
	rm tmpfile && bash five_checker_wc.sh >> tmpfile && bash avg_operations.sh

test_random: 
	bash random_numbers.sh $(NUM)

test_stats: 
	rm tmpfile && bash random_numbers_wc.sh $(NUM) && bash avg_operations.sh
