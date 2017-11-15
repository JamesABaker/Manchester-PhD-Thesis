platform='unknown'
unamestr=`uname`
platform='unknown'
unamestr=`uname`

DATE=$(date +"date-%Y-%m-%d_time-%H-%M-%S")

if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='darwin'
fi

#This is for linux and is the only one that works currently
if [[ $platform == 'linux' ]]; then
  pdflatex thesis.tex
  bibtex thesis.aux
  pdflatex thesis.tex

  pdftotext thesis.pdf
  echo "New lines, Wordcount, Characters"
  wc thesis.txt
  cp thesis.pdf ~/Dropbox/Manchester-PhD-Thesis
  cp thesis.pdf pdfs/$DATE.pdf

  #Cleaning up the junk files
  ## Core latex/pdflatex auxiliary files:
  rm thesis.aux
  rm thesis.lof
  rm thesis.lot
  rm thesis.fls
  rm thesis.out
  rm thesis.toc
  rm thesis.fmt
  rm thesis.fot
  rm thesis.cb
  rm thesis.cb2rm
  rm thesis.dvi
  rm thesis.acn
  rm thesis.log

  ## Gloassary output logs
  rm thesis.glo
  rm thesis.ist
  rm thesis.acr
  rm thesis.alg
  rm thesis.glg

  ## Bibliography auxiliary files (bibtex/biblatex/biber):
  rm thesis.bbl
  rm thesis.bcf
  rm thesis.blg
  rm thesis-blx.aux
  rm thesis-blx.bib
  rm thesis.brf
  rm thesis.run.xml

elif [[ $platform == 'darwin' ]]; then
  #Based on MacTex. Ensure $PATH has these lines if commands are not found.
  #Adds the latex bins to path. Not sure if there are any negative consequences of doing this repeatedly...
  export PATH=$PATH:/usr/texbin
  export PATH=$PATH:/Library/TeX/texbin

  pdflatex thesis.tex
  bibtex thesis.aux
  makeglossaries thesis
  makeglossaries chapter_tailanchor
  makeglossaries chapter_introduction
  makeglossaries chapter_conclusions
  makeglossaries chapter_predictfunction
  pdflatex thesis.tex

  pdftotext thesis.pdf
  echo "New lines, Wordcount, Characters"
  wc thesis.txt
  cp thesis.pdf ~/Dropbox/Manchester-PhD-Thesis.pdf
  cp thesis.pdf pdfs/$DATE.pdf

  #Cleaning up the junk files
  ## Core latex/pdflatex auxiliary files:
  rm thesis.aux
  rm thesis.lof
  #rm thesis.log
  rm thesis.lot
  rm thesis.fls
  rm thesis.out
  rm thesis.toc
  rm thesis.fmt
  rm thesis.fot
  rm thesis.cb
  rm thesis.cb2rm
  rm thesis.dvi
  rm thesis.acn
  rm thesis.glo
  rm thesis.ist

  ## Gloassary output logs
  rm thesis.glo
  rm thesis.ist
  rm thesis.acr
  rm thesis.alg
  rm thesis.glg
  rm thesis.gls

  ## Bibliography auxiliary files (bibtex/biblatex/biber):
  rm thesis.bbl
  rm thesis.bcf
  rm thesis.blg
  rm thesis-blx.aux
  rm thesis-blx.bib
  rm thesis.brf
  rm thesis.run.xml

fi
