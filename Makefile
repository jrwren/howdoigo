
README.html: README.asc
	asciidoc -b html5 -a icons -a toc2 -a theme=flask README.asc

README.pdf: README.asc
	a2x -fpdf -dbook --fop README.asc

README.epub: README.asc
	a2x -fepub -dbook README.asc
