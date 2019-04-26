
README.html: README.asc
	asciidoc -b html5 -a icons -a toc2 -a theme=flask README.asc

README.pdf: README.asc
	fop   -fo "README.fo" -pdf "README.pdf"

README.epub: README.asc
	a2x -fepub -dbook README.asc

README.xml: README.asc
	asciidoc --backend docbook -a "a2x-format=pdf"  --doctype book  --out-file README.xml README.asc

README.fo: README.xml
	"xsltproc"  --stringparam callout.graphics 0 --stringparam navig.graphics 0 --stringparam admon.textlabel 1 --stringparam admon.graphics 0 --stringparam toc.section.depth 1 --stringparam chunk.section.depth 0  --output "README.fo" "/etc/asciidoc/docbook-xsl/fo.xsl" "README.xml"
