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

del *.aux *.log *.toc *.bbl *.blg *.out *.idx
del linux\*.aux linux\*.log linux\*.toc
del linux\*.bbl linux\*.blg linux\*.out linux\*.idx
del mac\*.aux mac\*.log mac\*.toc
del mac\*.bbl mac\*.blg mac\*.out mac\*.idx
del windows\*.aux windows\*.log windows\*.toc
del windows\*.bbl windows\*.blg windows\*.out windows\*.idx
del _all\*.aux _all\*.log _all\*.toc
del _all\*.bbl _all\*.blg _all\*.out _all\*.idx
