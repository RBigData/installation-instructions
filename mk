#!/bin/sh

### Control file

rm *.pdf > /dev/null 2>&1

if [ -e .pic_ct ];then
  rm .pic_ct
fi

touch .pic_ct

# Include screenshots, exclude 0
#echo "\setcounter{include_sshots}{0}" >> .pic_ct
echo "\setcounter{include_sshots}{1}" >> .pic_ct
# Include cover 1, exclude 0
echo "\setcounter{make_cover}{0}" >> .pic_ct
#echo "\setcounter{make_cover}{1}" >> .pic_ct

### Compile

if [ "$1" = "all" ]; then
  # one at a time
  for type in include_windows include_mac include_linux;
  do
    if [ -e .sec_ct ];then
      rm .sec_ct
    fi
    touch .sec_ct
    
    fname=`echo $type | sed 's/include_//'`
    
    echo "\setcounter{${type}}{1}" > .sec_ct
    
    pdflatex installation.tex > /dev/null 2>&1
    pdflatex installation.tex > /dev/null 2>&1
    mv installation.pdf "installation_${fname}.pdf"
  done
  
  # all together
  rm  .sec_ct
  touch .sec_ct
  echo "\setcounter{include_windows}{1}" >> .sec_ct
  echo "\setcounter{include_mac}{1}" >> .sec_ct
  echo "\setcounter{include_linux}{1}" >> .sec_ct
  
  pdflatex installation.tex > /dev/null 2>&1
  pdflatex installation.tex > /dev/null 2>&1
  mv installation.pdf "installation_all.pdf"
elif [ "$1" = "win" ]; then
  rm  .sec_ct
  touch .sec_ct
  echo "\setcounter{include_windows}{1}" >> .sec_ct
  echo "\setcounter{include_mac}{0}" >> .sec_ct
  echo "\setcounter{include_linux}{0}" >> .sec_ct
  
  pdflatex installation.tex > /dev/null 2>&1
  pdflatex installation.tex > /dev/null 2>&1
  mv installation.pdf "installation_win.pdf"
elif [ "$1" = "mac" ]; then
  rm  .sec_ct
  touch .sec_ct
  echo "\setcounter{include_windows}{0}" >> .sec_ct
  echo "\setcounter{include_mac}{1}" >> .sec_ct
  echo "\setcounter{include_linux}{0}" >> .sec_ct
  
  pdflatex installation.tex > /dev/null 2>&1
  pdflatex installation.tex > /dev/null 2>&1
  mv installation.pdf "installation_mac.pdf"
elif [ "$1" = "linux" ]; then
  rm  .sec_ct
  touch .sec_ct
  echo "\setcounter{include_windows}{0}" >> .sec_ct
  echo "\setcounter{include_mac}{0}" >> .sec_ct
  echo "\setcounter{include_linux}{1}" >> .sec_ct
  
  pdflatex installation.tex > /dev/null 2>&1
  pdflatex installation.tex > /dev/null 2>&1
  mv installation.pdf "installation_linux.pdf"
else
  echo "Error : you must specify compilation for win, mac, or linux"
fi


