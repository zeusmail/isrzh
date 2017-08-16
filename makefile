LATEX  = pdflatex
BIBTEX = bibtex
DVIPS  = dvips

BASENAME = isrzh 


default: isrzh

clean: 
	rm -f ans*.tex *.synctex.gz *.out *.out.bak 
	rm -f isrzh*.bbl isrzh*.toc isrzh*.aux isrzh*.blg isrzh*.dvi isrzh*.idx isrzh*.log isrzh*.out 


isrzh:
	${LATEX} ${BASENAME}
#	${BIBTEX} ${BASENAME}
	${LATEX} ${BASENAME}
	${LATEX} -sPAPERSIZE=a4 -dPDFSETTINGS=/prepress ${BASENAME}

