FILE_NAME=minExt
OUTPUT_DIR=output

.PHONY: $(FILE_NAME).dvi run clean pdf

$(FILE_NAME).dvi::
	latex --src --interaction=nonstopmode -output-directory=$(OUTPUT_DIR) $(FILE_NAME).tex
	mv $(OUTPUT_DIR)/$@ $@
	xdvi -editor "gvim --servername vimtex --remote" -unique $@

run:
	bibtex $(OUTPUT_DIR)/$(FILE_NAME)

clean:
	rm -f $(FILE_NAME).dvi $(OUTPUT_DIR)/*

pdf:
	pdflatex --interaction=nonstopmode -output-directory=$(OUTPUT_DIR) $(FILE_NAME).tex
	mv $(OUTPUT_DIR)/$(FILE_NAME).pdf $(FILE_NAME).pdf 
