RUBBER=rubber
VIEWER=evince
DOT=dot

all: main.pdf

main.pdf: *.tex structure.pdf ic.pdf taskzustande.pdf scheduling.pdf
	$(RUBBER) -d main.tex

%.pdf: %.dot
	$(DOT) -T pdf -o $@ $<

show: all
	$(VIEWER) main.pdf 2> /dev/null

clean:
	rm -f *.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
