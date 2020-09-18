THISDIR := classicalmechanics
THISBOOK := $(THISDIR)

include make.revision
include ../latex/make.bookvars

FIGURES := ../figures/$(THISBOOK)

#ONCEFLAGS := -justonce

SOURCE_DIRS += $(FIGURES)
SOURCE_DIRS += lectures
SOURCE_DIRS += galagrangian
SOURCE_DIRS += mine
SOURCE_DIRS += problems

GENERATED_SOURCES += mathematica.tex 
#GENERATED_SOURCES += backmatter.tex
GENERATED_SOURCES += cronology.tex

#ONCEFLAGS := -justonce

DO_SPELL_CHECK := $(shell cat spellcheckem.txt)

include ../latex/make.rules

.PHONY: spellcheck
spellcheck: $(patsubst %.tex,%.sp,$(filter-out $(DONT_SPELL_CHECK),$(DO_SPELL_CHECK)))

%.sp : %.tex
	spellcheck $^
	touch $@

#backmatter.tex : ../classicthesis_mine/backmatter.tex
#	cp $< $@
