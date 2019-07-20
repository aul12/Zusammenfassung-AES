RUBBER=rubber
VIEWER=evince

all: main.pdf

main.pdf: main.tex
	$(RUBBER) -d main.tex

show: all
	$(VIEWER) main.pdf 2> /dev/null

clean:
	rm -f *.toc
	rm -f *.aux
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
