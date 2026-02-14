# Makefile for Resume PDF Generation
# Uses Docker with texlive/texlive image to compile LaTeX resume

# Variables
TEX_FILE = resume.tex
PDF_FILE = resume.pdf
DOCKER_IMAGE = texlive/texlive:latest
DOCKER_CMD = docker run --rm -v "${PWD}:/workspace" -w /workspace

# Default target: compile the resume
.PHONY: all
all: $(PDF_FILE)

# Compile resume to PDF using xelatex
$(PDF_FILE): $(TEX_FILE) awesome-cv.cls resume/*.tex
	@echo "Compiling resume..."
	$(DOCKER_CMD) $(DOCKER_IMAGE) xelatex -interaction=nonstopmode $(TEX_FILE)
	@echo "Resume compiled successfully: $(PDF_FILE)"

# Clean auxiliary files (but keep PDF)
.PHONY: clean
clean:
	@echo "Cleaning auxiliary files..."
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
	@echo "Clean complete"

# Clean everything including PDF
.PHONY: clean-all
clean-all: clean
	@echo "Removing PDF..."
	rm -f $(PDF_FILE)
	@echo "All files cleaned"

# Recompile (clean and build)
.PHONY: rebuild
rebuild: clean all

# Help target
.PHONY: help
help:
	@echo "Resume Makefile Commands:"
	@echo "  make          - Compile resume to PDF (default)"
	@echo "  make clean    - Remove auxiliary LaTeX files"
	@echo "  make clean-all - Remove all generated files including PDF"
	@echo "  make rebuild  - Clean and recompile"
	@echo "  make help     - Show this help message"
