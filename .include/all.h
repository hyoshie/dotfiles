/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   all.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hyoshie <hyoshie@student.42tokyo.jp>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/03 11:26:26 by hyoshie           #+#    #+#             */
/*   Updated: 2021/12/03 11:27:28 by hyoshie          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ALL_H
# define ALL_H

//ANSI C
# include <assert.h>
# include <ctype.h>
# include <errno.h>
# include <float.h>
# include <limits.h>
# include <locale.h>
# include <math.h>
# include <setjmp.h>
# include <signal.h>
# include <stdarg.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <time.h>

//ISO C99
# include <complex.h>
# include <fenv.h>
# include <inttypes.h>
# include <stdbool.h>
# include <stdint.h>
# include <tgmath.h>

//Extra? 
# include <unistd.h>
# include <fcntl.h>
# include <sys/wait.h>
# include <sys/stat.h>
# include <sys/types.h>

//fromNyokota
# include <libc.h>

//Color
# define RED "\x1b[31m"
# define GREEN "\x1b[32m"
# define YELLOW "\x1b[33m"
# define BLUE "\x1b[34m"
# define MAGENTA "\x1b[35m"
# define CYAN "\x1b[36m"
# define RESET "\x1b[39m"

#endif /* ALL_H */
