platform='unknown'
unamestr=`uname`
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='darwin'
fi

if [[ $platform == 'linux' ]]; then
  pdflatex thesis.tex
  bibtex thesis.aux
  pdflatex thesis.tex
  pdflatex thesis.tex


elif [[ $platform == 'darwin' ]]; then
  xelatex thesis.tex
  bibtex thesis.aux
  xelatex thesis.tex
  xelatex thesis.tex
fi
