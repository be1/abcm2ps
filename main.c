/*
 * abcm2ps: a program to typeset tunes written in ABC format
 *	using PostScript or SVG
 *
 * Copyright (C) 1998-2019 Jean-François Moine (http://moinejf.free.fr)
 *
 * Adapted from abc2ps
 * Copyright (C) 1996-1998  Michael Methfessel (https://github.com/methf/abc2ps/)
 *
 * abcm2ps is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 */

#include "abcm2ps.h"
#include <stdlib.h>
/* -- main program -- */
int main(int argc, char **argv)
{
	return abcm2ps(argc, argv);
}
