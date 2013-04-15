#!/bin/bash


### Functions
function gen # $1 = fname, $2 = screenshot control
{
  for sshots in with_screenshots without_screenshots;
  do
    checkexist .pic_ct
    checkexist .cover_ct
    if [ "${sshots}" = "with_screenshots" ];then
      echo "\setcounter{include_sshots}{1}" >> .pic_ct
      echo "\setcounter{make_cover}{1}" >> .cover_ct
    else
      echo "\setcounter{include_sshots}{0}" >> .pic_ct
      echo "\setcounter{make_cover}{0}" >> .cover_ct
    fi
    
    pdflatex installation.tex > /dev/null 2>&1
    pdflatex installation.tex > /dev/null 2>&1
    
    mv installation.pdf "output/${sshots}/pdf/installation_${1}.pdf"
    
    ./convert_to_html > /dev/null 2>&1
    mv index.html "output/${sshots}/html/index_${1}.html"
    
  done
}

function checkexist
{
  if [ -e $1 ];then
    rm $1
    touch $1
  fi
}



### Compile
#rm *.pdf > /dev/null 2>&1

if [ "$1" = "all" ]; then
  # one at a time
  for type in include_windows include_mac include_linux;
  do
    checkexist .sec_ct
    
    fname=`echo $type | sed 's/include_//'`
    
    echo "\setcounter{${type}}{1}" > .sec_ct
    
    gen ${fname}
 done
  
  # all together
  checkexist .sec_ct
  echo "\setcounter{include_windows}{1}" >> .sec_ct
  echo "\setcounter{include_mac}{1}" >> .sec_ct
  echo "\setcounter{include_linux}{1}" >> .sec_ct
  
  gen "all"
  
elif [ "$1" = "win" ]; then
  checkexist .sec_ct
  echo "\setcounter{include_windows}{1}" >> .sec_ct
  echo "\setcounter{include_mac}{0}" >> .sec_ct
  echo "\setcounter{include_linux}{0}" >> .sec_ct
  
  gen "windows"
  
elif [ "$1" = "mac" ]; then
  checkexist .sec_ct
  echo "\setcounter{include_windows}{0}" >> .sec_ct
  echo "\setcounter{include_mac}{1}" >> .sec_ct
  echo "\setcounter{include_linux}{0}" >> .sec_ct
  
  gen "mac"
  
elif [ "$1" = "linux" ]; then
  checkexist .sec_ct
  echo "\setcounter{include_windows}{0}" >> .sec_ct
  echo "\setcounter{include_mac}{0}" >> .sec_ct
  echo "\setcounter{include_linux}{1}" >> .sec_ct
  
  gen "linux"
  
else
  echo "Error : you must specify compilation for win, mac, or linux"
fi
