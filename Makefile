RUBBER=rubber
VIEWER=evince
DOT=dot
INKSCAPE=inkscape

all: main.pdf

main.pdf: *.tex structure.pdf ic.pdf taskzustande.pdf scheduling.pdf YDiagrammGajski.pdf
	$(RUBBER) -d main.tex

YDiagrammGajski.pdf: YDiagrammGajski.svg
	$(INKSCAPE) --file=YDiagrammGajski.svg --export-area-drawing --without-gui --export-pdf=YDiagrammGajski.pdf

%.pdf: %.dot
	$(DOT) -T pdf -o $@ $<

show: all
	screen -dm $(VIEWER) main.pdf

clean:
	rm -f *.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
