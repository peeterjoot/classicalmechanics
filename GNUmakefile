THISDIR := classicalmechanics
THISBOOK := $(THISDIR)

BIBLIOGRAPHY_PATH := classicthesis_mine
HAVE_OWN_CONTENTS := 1
#HAVE_OWN_TITLEPAGE := 1
MY_CLASSICTHESIS_FRONTBACK_FILES += ../latex/classicthesis_mine/FrontBackmatter/Index.tex
MY_CLASSICTHESIS_FRONTBACK_FILES += ../latex/classicthesis_mine/FrontBackmatter/ContentsAndFigures.tex
BOOKTEMPLATE := ../latex/classicthesis_mine/ClassicThesis2.tex

include make.revision
include ../latex/make.bookvars

#PRINT_VERSION := 1
#ifdef KINDLE_VERSION
#PARAMS += --kindle
#endif
ifdef PRINT_VERSION
SUBFIGDIR := bw
else
SUBFIGDIR := color
endif
ifndef PRINT_VERSION
PARAMS += --no-print
endif
#PARAMS += -subfig $(SUBFIGDIR)
#DISTEXTRA := $(SUBFIGDIR)
ifdef PRINT_VERSION
#DISTEXTRA := $(DISTEXTRA).kdp
DISTEXTRA := kdp
endif

FIGURES := ../figures/$(THISBOOK)

#ONCEFLAGS := -justonce

SOURCE_DIRS += $(FIGURES)
SOURCE_DIRS += lectures
SOURCE_DIRS += galagrangian
SOURCE_DIRS += mine
SOURCE_DIRS += problems

GENERATED_SOURCES += mathematica.tex 
GENERATED_SOURCES += backmatter.tex
GENERATED_SOURCES += cronology.tex

#ONCEFLAGS := -justonce

DO_SPELL_CHECK := $(shell cat spellcheckem.txt)

include ../latex/make.rules

.PHONY: spellcheck
spellcheck: $(patsubst %.tex,%.sp,$(filter-out $(DONT_SPELL_CHECK),$(DO_SPELL_CHECK)))

all :: junk.pdf
all :: v
all :: u
v :: volumeAndFourVolume.pdf
u :: unpackingFundamentalTheorem.pdf

%.sp : %.tex
	spellcheck $^
	touch $@

backmatter.tex: ../latex/classicthesis_mine/backmatter2.tex
	rm -f $@
	ln -s ../latex/classicthesis_mine/backmatter2.tex backmatter.tex
