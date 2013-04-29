@ECHO OFF

rem ### I guess if you really want to build the installation instruction
rem ### pdf's on windows, then you could do this:

echo \setcounter{make_cover}{1} > .cover_ct
echo \setcounter{include_sshots}{1} > .pic_ct
echo \setcounter{include_windows}{1} > .sec_ct
echo \setcounter{include_mac}{1} >> .sec_ct
echo \setcounter{include_linux}{1} >> .sec_ct

pdflatex installation
bibtex installation
pdflatex installation
pdflatex installation
pdflatex installation
del installation.aux installation.idx installation.out
del installation.toc installation.bbl installation.blg installation.log
