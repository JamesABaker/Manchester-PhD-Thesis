platform='unknown'
unamestr=`uname`
platform='unknown'
unamestr=`uname`
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
  pdflatex thesis.tex

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

  ## Bibliography auxiliary files (bibtex/biblatex/biber):
  rm thesis.bbl
  rm thesis.bcf
  rm thesis.blg
  rm thesis-blx.aux
  rm thesis-blx.bib
  rm thesis.brf
  rm thesis.run.xml

  pdftotext thesis.pdf
  echo "New lines, Wordcount, Characters"
  wc thesis.txt
  cp thesis.pdf ~/Dropbox/Manchester-PhD-Thesis
  cp thesis.pdf readme.pdf



elif [[ $platform == 'darwin' ]]; then
  #In El Capitan it's not clear exactly what latex commands are available for now
  xelatex thesis.tex
  bibtex thesis.aux
  xelatex thesis.tex
  xelatex thesis.tex


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

  ## Bibliography auxiliary files (bibtex/biblatex/biber):
  rm thesis.bbl
  rm thesis.bcf
  rm thesis.blg
  rm thesis-blx.aux
  rm thesis-blx.bib
  rm thesis.brf
  rm thesis.run.xml
fi
