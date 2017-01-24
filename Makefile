NAME   = gtrlib.largetrees
SRC    = $(NAME).dtx
INS    = $(NAME).ins
PKG    = $(NAME).sty
DOC    = $(NAME).pdf
README = README.md
CTAN = $(SRC) $(INS) $(DOC) $(README)

all: package docs
.PHONY: all package docs clean cleanall ctan

package: $(SRC) $(INS)
	latex $(INS)

docs:    $(DOC)

$(DOC): $(SRC) $(PKG)
	pdflatex $(SRC)
	biber $(NAME)
	makeindex -s gind.ist -o $(NAME).ind $(NAME).idx
	makeindex -s gglo.ist -o $(NAME).gls $(NAME).glo
	pdflatex $(SRC)
	pdflatex $(SRC)

ctan: $(CTAN)
	mkdir $(NAME)
	cp $(CTAN) $(NAME)/
	zip -r $(NAME)-$(shell date "+%Y-%m-%d").zip $(NAME)
	rm -rf $(NAME)

clean:
	rm -f $(NAME).{aux,bbl,bcf,bib,blg,glo,gls,hd,idx,ilg,ind,log,out,run.xml,toc,tmp} $(NAME)-blx.bib
	rm -f example.gauss.graph

cleanall: clean
	rm -f $(NAME).{pdf,sty} $(NAME).code.tex
