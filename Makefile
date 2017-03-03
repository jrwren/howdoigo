
README.html: README.asc
	asciidoc -b html5 -a icons -a toc2 -a theme=flask README.asc

