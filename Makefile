RUBBER=rubber
VIEWER=evince
DOT=dot

all: main.pdf

main.pdf: *.tex structure.pdf
	$(RUBBER) -d main.tex

structure.pdf: structure.dot
	$(DOT) -T pdf -o structure.pdf structure.dot

show: all
	$(VIEWER) main.pdf 2> /dev/null

clean:
	rm -f *.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
