# Thesis Download
The most up to date draft version can be found here: [PDF download](https://github.com/jbkr/Manchester-PhD-Thesis/blob/master/thesis.pdf).

Official releases are available from the [releases section](https://github.com/JamesABaker/Manchester-PhD-Thesis/releases).

<!--
# About

This thesis is a modified version of the latex template thesis available at [the University of Manchester website](http://www.maths.manchester.ac.uk/study/postgraduate/information-for-current-students/general-information/forms-policies-regulations/latextemplates/).

Generally, the modifications allow multi-file chapter division.

This file has a history of it's own.

```
Acquired for uk.ac.oxford.prg by Stephen Page
<sdpage> on 16 Apr
86 from Howard Trickey <a href="mailto:trickey@arpa.su-aimvax">trickey@arpa.su-aimvax</a> , then hacked by
Michael Fisher into Manchester University style.</sdpage>
Hacked from muthesis.sty by Rhod Davies (rmd@uk.ac.man.cs.r5) to match the latest ridiculous rules from the exams office (March 1990) as given below.
Further modified by David Carlisle (DPC) September 1993.
Further modified by David Carlisle (DPC) September 1994. Add [PhD] option (default) and [MSc] option. Make into LaTeX2e Class file.
Further modified by Graham Gough at various dates Added [MPhil option.
Modified William Dyke (WBD) July 1997 so that declaration is correct for use in departments other than Computer Science
Modified by Chris Paul March 2006 to reflect new University Schools and Faculty setup
Modified by Chris Paul August 2013 to support duplex printed margins 
```


# Compiling.

Compiling has gotten out of hand with all the modules. I used the shell script within, however, here are the bare minumum commands needed for all the formatting and indexing to be performed correctly.

```

pdflatex thesis.tex
bibtex thesis.aux
makeglossaries thesis
makeglossaries chapter_introduction
makeglossaries chapter_tmcomposition
makeglossaries chapter_tailanchor
makeglossaries chapter_predictfunction
makeglossaries chapter_conclusions
pdflatex thesis.tex
makeglossaries thesis
makeglossaries chapter_introduction
makeglossaries chapter_tmcomposition
makeglossaries chapter_tailanchor
makeglossaries chapter_predictfunction
makeglossaries chapter_conclusions
pdflatex thesis.tex
pdflatex thesis.tex
```
-->
