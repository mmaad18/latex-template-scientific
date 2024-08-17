
mkdir -p output

pdflatex -output-directory=output main.tex
biber --output-directory=output main
pdflatex -output-directory=output main.tex
pdflatex -output-directory=output main.tex

mv main.aux main.bbl main.bcf main.blg main.log main.run.xml output/
