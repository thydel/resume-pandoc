top:; @date

pandoc = pandoc $< --template templates/jb2resume.latex -o $@
%.pdf: %.md; $(pandoc)
%.tex: %.md; $(pandoc)

main := tde-cv.tex tde-cv.pdf
$(main): tde-cv.md
main: $(main)
.PHONY: main
