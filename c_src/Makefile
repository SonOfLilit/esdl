UNAME = $(shell uname)

ifeq ($(UNAME), Darwin)
	include Makefile.macOSX
else
	include Makefile.default
endif