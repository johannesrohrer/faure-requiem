# Makefile for a GNU LilyPond project, created 2013-06
#
# Gabriel Fauré, Requiem (1887)
#
# (C) 2013 Johannes Rohrer <src@johannesrohrer.de>
#
# This work is licensed under the Creative Commons
# Attribution-ShareAlike 3.0 Unported License. To view a copy of this
# license, visit http://creativecommons.org/licenses/by-sa/3.0/ or
# send a letter to Creative Commons, 444 Castro Street, Suite 900,
# Mountain View, California, 94041, USA.

all:
	lilypond vocal-score.ly
	lilypond piano-vocal-score.ly

final:
	lilypond -dno-point-and-click vocal-score.ly
	lilypond -dno-point-and-click piano-vocal-score.ly
