# Thesis Download
The most up to date draft version can be found here: [PDF download](https://github.com/jbkr/Manchester-PhD-Thesis/blob/master/thesis.pdf).

Official releases will be linked here when appropriate.

# About

This thesis is a modified version of the latex template thesis available at [the University of Manchester website](http://www.maths.manchester.ac.uk/study/postgraduate/information-for-current-students/general-information/forms-policies-regulations/latextemplates/).

Specifically the modifications allow multi-file chapter division and an additional command to handle `ORCID` IDs, now compulsory for all staff and students in the University of Manchester. See comments in the `muthesis.cls` file for more specific information.

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

Run:
```
pdflatex thesis.tex
bibtex thesis.aux
makeglossaries thesis
makeglossaries chapter_tailanchor
makeglossaries chapter_introduction
makeglossaries chapter_conclusions
makeglossaries chapter_predictfunction
pdflatex thesis.tex
pdflatex thesis.tex
```
