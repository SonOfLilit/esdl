#  Copyright (c) 2001 Dan Gudmundsson
#  See the file "license.terms" for information on usage and redistribution
#  of this file, and for a DISCLAIMER OF ALL WARRANTIES.
# 
#     $Id: Makefile,v 1.2 2005/06/29 14:45:39 dgud Exp $
#

TestMods	= testsprite testgl testbin erldemo testaudio testjoy testglutess
TestTargets	= $(TestMods:%=%.beam)

# Targets
target:	$(TestTargets)

clean:
	rm -f $(TestTargets)
	rm -f *~ core erl_crash.dump

# Rules
ESRC = .
EBIN = .
ERLC = erlc
ERLINC = ../include
ERL_COMPILE_FLAGS = -pa ../../esdl/ebin

%.beam: $(ESRC)/%.erl
	$(ERLC) -W -I$(ERLINC) -bbeam $(ERL_FLAGS) $(ERL_COMPILE_FLAGS) -o$(EBIN) $<
