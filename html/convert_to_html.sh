#!/bin/sh

rm *.html

cd ..

cp installation.tex index.tex
#sed -i 's/\\vspace{[^}]*}//' index.tex
sed -i -e 's/\\begin{lstlisting}\[language=sh\]/\\begin{verbatim}/' -e 's/\end{lstlisting}%%%/\end{verbatim}/' index.tex
htlatex index.tex "html,3,next" && echo -e "\n\n\n"

for file in *.html; do
    sed -i 's/src=\"/src=\"..\//g' $file

	sed -i 's/<\/h3>/<hr><\/h3>/g' $file
	sed -i 's/\&#x00A0;<span class=\"subsectionToc/\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;<span class=\"subsectionToc/' $file
	sed -i 's/\&#x00A0;<span class=\"subsubsectionToc/\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;\&#x00A0;<span class=\"subsectionToc/' $file

	sed -i '/<p class=\"noindent\" ><hr class=\"float\"><div class=\"float\"/{n;d;}' $file
	sed -i '/<p class=\"noindent\" ><hr class=\"float\"><div class=\"float\"/d' $file	
	sed -i 's/<\/div><hr class=\"endfloat\" \/>//' $file

done

mv *.html html/
rm index.*
cd html/
firefox index.html &
